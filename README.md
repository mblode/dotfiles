# mblode's dotfiles

Managed with [chezmoi](https://chezmoi.io). One command sets up a fresh Mac.

## New machine

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mblode
```

This installs chezmoi, clones this repo, and on macOS automatically:

- installs Homebrew and everything in the [Brewfile](home/dot_Brewfile)
- clones the zsh plugins and the tmux plugin manager (`tpm`)
- deploys every dotfile to its place
- applies the macOS defaults (Dock, screenshots, key repeat)
- installs `vim-plug` and the Vim plugins
- sets zsh as the default shell

You'll be prompted once for your git name and email.

## What's inside

- **Shell** — zsh with [starship](https://starship.rs) prompt,
  [atuin](https://atuin.sh) history, [zoxide](https://github.com/ajeetdsouza/zoxide),
  fzf-tab, autosuggestions, syntax highlighting. Lazy-loaded nvm.
- **Terminal** — [Ghostty](https://ghostty.org)
- **Editors** — Neovim / Vim (vim-plug)
- **Multiplexer** — tmux (tpm)
- **Git** — config + global ignore
- **macOS** — scripted `defaults`

## Daily workflow

```sh
chezmoi edit ~/.zshrc      # edit a dotfile in the source state
chezmoi apply              # apply pending changes to your home dir
chezmoi update             # pull this repo and apply
chezmoi cd                 # drop into the source repo
chezmoi re-add             # pull live edits back into the source
```

## Secrets

Machine-local secrets and environment variables live in `~/.localrc` (sourced by
`.zshrc`) and `~/.npmrc`. These are **not** tracked here — keep them out of the repo.

## Layout

chezmoi reads everything under [`home/`](home) (set by [`.chezmoiroot`](.chezmoiroot)).
Source names follow chezmoi's
[conventions](https://chezmoi.io/reference/source-state-attributes/)
(`dot_` → `.`, `executable_` → `+x`, `.tmpl` → templated). Install steps live in
[`home/.chezmoiscripts`](home/.chezmoiscripts); external repos in
[`home/.chezmoiexternal.toml`](home/.chezmoiexternal.toml).
