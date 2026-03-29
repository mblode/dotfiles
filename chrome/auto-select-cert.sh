#!/bin/bash
set -euo pipefail

# Auto-select client certificate for Chromium-based browsers on macOS
# Skips the "Select a certificate" dialog for a given domain.
#
# Usage:
#   ./auto-select-cert.sh
#   ./auto-select-cert.sh --browser chrome --domain qa.linktr.ee --issuer "Linktree Platform CA"
#
# Supported browsers: chrome, brave, edge, arc, chromium

get_bundle_id() {
  case "$1" in
    chrome)   echo "com.google.Chrome" ;;
    brave)    echo "com.brave.Browser" ;;
    edge)     echo "com.microsoft.Edge" ;;
    arc)      echo "company.thebrowser.Browser" ;;
    chromium) echo "org.chromium.Chromium" ;;
    *)        return 1 ;;
  esac
}

get_app_name() {
  case "$1" in
    chrome)   echo "Google Chrome" ;;
    brave)    echo "Brave Browser" ;;
    edge)     echo "Microsoft Edge" ;;
    arc)      echo "Arc" ;;
    chromium) echo "Chromium" ;;
  esac
}

ALL_BROWSERS="chrome brave edge arc chromium"

detect_installed() {
  local found=""
  for name in $ALL_BROWSERS; do
    local bid
    bid=$(get_bundle_id "$name")
    if [ -f "$HOME/Library/Preferences/${bid}.plist" ]; then
      found="${found:+$found }$name"
    fi
  done
  echo "$found"
}

detect_default() {
  local default_bid
  default_bid=$(python3 -c "
try:
    from LaunchServices import LSCopyDefaultHandlerForURLScheme
    bid = LSCopyDefaultHandlerForURLScheme('https')
    print(bid if bid else '')
except Exception:
    print('')
" 2>/dev/null) || true

  for name in $ALL_BROWSERS; do
    local bid
    bid=$(get_bundle_id "$name")
    if [ "$bid" = "$default_bid" ]; then
      echo "$name"
      return
    fi
  done
}

is_running() {
  local app_name
  app_name=$(get_app_name "$1")
  osascript -e "tell application \"System Events\" to (name of processes) contains \"$app_name\"" 2>/dev/null | grep -q "true"
}

to_lower() {
  echo "$1" | tr '[:upper:]' '[:lower:]'
}

# --- Parse args ---

BROWSER=""
DOMAIN=""
ISSUER=""

while [ $# -gt 0 ]; do
  case "$1" in
    --browser) BROWSER=$(to_lower "$2"); shift 2 ;;
    --domain)  DOMAIN="$2"; shift 2 ;;
    --issuer)  ISSUER="$2"; shift 2 ;;
    --help|-h)
      echo "Usage: $0 [--browser <name>] [--domain <domain>] [--issuer <CN>]"
      echo "Browsers: $ALL_BROWSERS"
      exit 0
      ;;
    *) echo "Unknown option: $1. Use --help for usage."; exit 1 ;;
  esac
done

# --- Resolve browser ---

if [ -z "$BROWSER" ]; then
  installed=$(detect_installed)

  if [ -z "$installed" ]; then
    echo "No supported Chromium browsers found."
    exit 1
  fi

  # Count installed browsers
  count=$(echo "$installed" | wc -w | tr -d ' ')

  if [ "$count" -eq 1 ]; then
    BROWSER="$installed"
    echo "Detected: $BROWSER"
  else
    default=$(detect_default)
    echo "Detected browsers: $installed"

    if [ -n "$default" ]; then
      printf "Use %s? [Y/n] " "$default"
      read -r confirm
      if [ -z "$confirm" ] || [ "$(to_lower "$confirm")" = "y" ]; then
        BROWSER="$default"
      fi
    fi

    if [ -z "$BROWSER" ]; then
      printf "Browser [%s]: " "$installed"
      read -r BROWSER
      BROWSER=$(to_lower "$BROWSER")
    fi
  fi
fi

if ! get_bundle_id "$BROWSER" > /dev/null 2>&1; then
  echo "Unknown browser: $BROWSER"
  echo "Supported: $ALL_BROWSERS"
  exit 1
fi

# --- Resolve domain & issuer ---

DEFAULT_DOMAIN="qa.linktr.ee"
DEFAULT_ISSUER="Linktree Platform CA"

if [ -z "$DOMAIN" ]; then
  printf "Domain [%s]: " "$DEFAULT_DOMAIN"
  read -r DOMAIN
  DOMAIN="${DOMAIN:-$DEFAULT_DOMAIN}"
fi

if [ -z "$ISSUER" ]; then
  printf "Issuer CN [%s]: " "$DEFAULT_ISSUER"
  read -r ISSUER
  ISSUER="${ISSUER:-$DEFAULT_ISSUER}"
fi

BUNDLE_ID=$(get_bundle_id "$BROWSER")
PLIST="$HOME/Library/Preferences/${BUNDLE_ID}.plist"

if [ ! -f "$PLIST" ]; then
  echo "Plist not found: $PLIST"
  echo "Is $BROWSER installed?"
  exit 1
fi

# --- Safety check: is browser running? ---

if is_running "$BROWSER"; then
  app_name=$(get_app_name "$BROWSER")
  echo ""
  echo "Warning: $app_name is running."
  echo "   Changes may be overwritten when it quits."
  echo "   For best results, quit $app_name first."
  echo ""
  printf "Continue anyway? [y/N] "
  read -r confirm
  if [ "$(to_lower "${confirm:-n}")" != "y" ]; then
    echo "Aborted. Quit $app_name and re-run."
    exit 0
  fi
fi

# --- Write policy (values passed via sys.argv to avoid injection) ---

python3 - "$PLIST" "$DOMAIN" "$ISSUER" << 'PYEOF'
import plistlib, json, sys

plist_path, domain, issuer_cn = sys.argv[1], sys.argv[2], sys.argv[3]

with open(plist_path, "rb") as f:
    d = plistlib.load(f)

entry = json.dumps({
    "pattern": "https://[*.]" + domain,
    "filter": {"ISSUER": {"CN": issuer_cn}}
})

existing = d.get("AutoSelectCertificateForUrls", [])

if entry in existing:
    print("Entry already exists, nothing to do.")
else:
    existing.append(entry)
    d["AutoSelectCertificateForUrls"] = existing
    with open(plist_path, "wb") as f:
        plistlib.dump(d, f)
    print("Policy added.")
PYEOF

echo ""
echo "Current policy:"
defaults read "$BUNDLE_ID" AutoSelectCertificateForUrls 2>/dev/null || echo "  (none)"
echo ""
app_name=$(get_app_name "$BROWSER")
echo "Restart $app_name and visit chrome://policy to verify."
