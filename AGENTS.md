# Repository guidelines

## Layout

chezmoi reads everything under [`home`](home), set by [`.chezmoiroot`](.chezmoiroot). Source
names follow chezmoi's
[source state attributes](https://chezmoi.io/reference/source-state-attributes/): `dot_` becomes
a leading `.`, `executable_` sets the executable bit, and a `.tmpl` suffix marks a templated
file.

- [`home/.chezmoiscripts`](home/.chezmoiscripts) holds the install steps. `run_once_` scripts
  run once per machine, `run_onchange_` re-run whenever the rendered script changes, and the
  numeric prefix sets the order within the `before` or `after` phase.
- [`home/.chezmoiexternal.toml`](home/.chezmoiexternal.toml) declares the external git repos
  (the zsh plugins and `tpm`), refreshed at most once a week.
- [`home/.chezmoi.toml.tmpl`](home/.chezmoi.toml.tmpl) prompts for the git name and email on
  `chezmoi init`.
- [`home/.chezmoiignore`](home/.chezmoiignore) lists source files that should never be deployed.

## Checks

CI runs on `macos-latest` and does three things, so run the equivalent before pushing:

```bash
# 1. Shellcheck every rendered script
chezmoi execute-template --source="$PWD/home" < home/.chezmoiscripts/run_onchange_before_10-packages.sh.tmpl | shellcheck -s bash -

# 2. Dry-run a full apply into a throwaway destination
chezmoi apply --dry-run --verbose --source="$PWD/home" --destination="$(mktemp -d)" --exclude=externals

# 3. Confirm the Brewfile parses
brew bundle list --file=home/dot_Brewfile
```

## Gotchas

- The macOS defaults script is `run_onchange_`, so editing a single `defaults write` line
  re-applies every line in the file and restarts Dock and SystemUIServer.
- Secrets belong in `~/.localrc` and `~/.npmrc`, which are deliberately untracked. Never add a
  key to a templated file.
