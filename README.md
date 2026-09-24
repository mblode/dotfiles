<div align="center">

# Dotfiles

**One command turns a fresh Mac into a working machine: Homebrew, zsh, Neovim, tmux, Ghostty**

Managed with [chezmoi](https://chezmoi.io), so the same tool that sets a machine up keeps it in sync afterwards.

</div>

## Install

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mblode
```

These are Matthew Blode's own dotfiles, so the command is not gentle with a machine that already has a setup. It installs Homebrew, overwrites the dotfiles in your home directory, rewrites Dock, screenshot, and key-repeat defaults, changes your login shell to zsh, and installs Claude Code. Fork the repo and read [`home`](home) before running it anywhere you care about.

## Quickstart

On macOS the bootstrap installs chezmoi, clones the repo, and then:

- asks for your admin password once, so casks with a `.pkg` installer don't stop the run
- installs Homebrew and the 67 formulae and casks in the [Brewfile](home/dot_Brewfile)
- clones the five zsh plugins and the tmux plugin manager, `tpm`
- deploys every dotfile to its place
- applies the macOS defaults: an auto-hiding Dock that appears instantly, fast key repeat, and screenshots saved to Downloads without the thumbnail
- installs `vim-plug` and the Vim plugins
- sets zsh as the login shell
- installs [Claude Code](https://claude.com/claude-code) to `~/.local/bin`

You are prompted once for your git name and email.

When the run finishes, it prints a numbered list of anything still unfinished, such as a cask that failed or signing in to GitHub. Run `chezmoi apply` again at any time to see that list. It prints nothing once the machine is fully set up.

Then log out and back in so the key repeat change takes effect.

## What's inside

- **Shell:** zsh with the [starship](https://starship.rs) prompt, [atuin](https://atuin.sh) history, [zoxide](https://github.com/ajeetdsouza/zoxide), fzf-tab, autosuggestions, and syntax highlighting. nvm is lazy-loaded.
- **Terminal:** [Ghostty](https://ghostty.org).
- **Editors:** Neovim and Vim, both on vim-plug.
- **Multiplexer:** tmux, with tpm for plugins.
- **Git:** config plus a global ignore file.
- **macOS:** Dock, screenshot, and keyboard defaults as a script that re-runs when it changes.

## Commands

| Command | What it does |
|---------|--------------|
| `chezmoi edit ~/.zshrc` | Edit a dotfile in the source state. |
| `chezmoi apply` | Apply pending changes to your home directory. |
| `chezmoi update` | Pull this repo and apply. |
| `chezmoi re-add` | Pull live edits back into the source. |
| `chezmoi cd` | Open a shell in the source repo. |

## Secrets

Machine-local secrets and environment variables live in `~/.localrc`, sourced by `.zshrc`, and in `~/.npmrc`. Neither is tracked here. Keep them out of the repo.

## License

MIT

---

Crafted by [<img src="https://blode.co/avatar-circle.png" width="20" align="top" />](https://blode.co) [Matthew Blode](https://blode.co)
