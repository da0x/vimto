# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**vimto** is a personal Vim configuration by Daher Alfawares. Philosophy: minimalist behavior, full visual beauty. Uses Vim 9.1 native packages and built-in features instead of heavy plugin managers.

## Setup

```bash
git clone https://github.com/da0x/vimto.git ~/vimto
bash ~/vimto/setup.sh
echo "source ~/vimto/vimto.vim" >> ~/.vimrc
```

## Architecture

```
~/vimto/
├── vimto.vim              # Entry point: sets runtimepath, loads packadd plugins
├── plugin/
│   ├── appearance.vim     # Colors, statusline, visual settings
│   ├── editor.vim         # General editor settings (tabs, scroll, etc.)
│   ├── navigation.vim     # Window/tab navigation keybindings
│   ├── lsp.vim            # yegappan/lsp setup + LSP keybindings
│   ├── languages.vim      # Filetype-specific autocmds (Go, TS, C++)
│   └── functions.vim      # SmartQuit, fold persistence
├── ftdetect/ebnf.vim      # *.ebnf files are EBNF grammars
├── syntax/ebnf.vim        # Highlighting for EBNF (W3C ::= style, and ISO = ... ;)
├── ftplugin/ebnf.vim      # /* */ comments for the comment package
├── pack/plugins/
│   ├── start/nord-vim/    # Color scheme (auto-loaded)
│   └── opt/lsp/           # yegappan/lsp (loaded via packadd)
├── setup.sh               # Installs plugins + language servers
└── CLAUDE.md
```

- **`vimto.vim`** — Entry point sourced from `~/.vimrc`. Sets runtimepath and loads optional packages via `packadd`. The `plugin/` directory is auto-sourced by Vim.
- **`plugin/`** — Modular config files, each owning a specific concern. Auto-sourced alphabetically by Vim.
- **`pack/plugins/`** — Vim native package directories. `start/` is auto-loaded, `opt/` is loaded via `packadd`.
- **`setup.sh`** — Clones plugins into `pack/` and installs language servers (gopls, typescript-language-server).

## Plugin Stack

| Plugin | Purpose |
|--------|---------|
| nord-vim | Color scheme (pack/plugins/start/) |
| yegappan/lsp | Pure Vim9 LSP client (pack/plugins/opt/) |

Built-in Vim 9.1 packages also used: matchit, comment, editorconfig, hlyank, nohlsearch.

## Key Conventions

- **F-key bindings are filetype-specific**: F1/F5/F7/F8/F11 do different things for Go, C++, TypeScript, and HTML files. Defined in `plugin/languages.vim`. All F-keys exit insert mode first via imap (in `plugin/navigation.vim`).
- **Window navigation uses arrow keys and Ctrl+hjkl** (in `plugin/navigation.vim`).
- **Tab/Shift-Tab** cycle through Vim tabs.
- **LSP keybindings** (in `plugin/lsp.vim`): `gd` (definition), `gy` (type-def), `gi` (implementation), `gr` (references), `K` (hover docs), `[g`/`]g` (diagnostics), `F2` (rename).
- **SmartQuit()** (F12 in `plugin/functions.vim`): writes and quits file buffers, just quits special buffers.
- **Fold persistence** (in `plugin/functions.vim`): views are auto-saved/loaded per file.

## When Editing

- Each module file owns a single concern — keep it that way.
- Indentation is 4 spaces (expandtab) throughout.
- Language-specific mappings use `autocmd FileType` with `<buffer>` to scope them (in `plugin/languages.vim`).
- LSP keybindings are global and unified across all languages (in `plugin/lsp.vim`).
