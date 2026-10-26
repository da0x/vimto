# vimto

This is the personal vimrc for Daher Alfawares.

My approach is minimalist behavior and full visual beauty. Give it a shot.

## Prerequisites

- Vim 9.1+
- Language servers, for the languages you edit:
  `sudo pacman -S gopls typescript-language-server clang` (clangd comes in `clang`)

## Install

```bash
git clone https://github.com/da0x/vimto.git ~/vimto
bash ~/vimto/setup.sh
echo "source ~/vimto/vimto.vim" >> ~/.vimrc
```

`setup.sh` clones plugins and reports any missing language servers.

## Keys

- `F1` to `F11` depend on the filetype (Go, TypeScript, C++, HTML, CSS, Markdown):
  go to definition, build, test, run. They work from insert mode too.
- `F12` saves and quits. In a buffer that cannot be saved, it only quits.
- `F3` and `F4` toggle line numbers and relative numbers. `F9` opens a terminal,
  `F10` the quickfix list.
- `Tab` and `Shift+Tab` move between tabs.
- The arrow keys and `Ctrl+hjkl` move between windows. `Alt` with an arrow resizes
  one, and `Ctrl+Left` and `Ctrl+Right` rotate them.
- Language servers: `gd` definition, `gy` type definition, `gi` implementation,
  `gr` references, `K` docs, `[g` and `]g` diagnostics, `F2` rename.
- Folds and the cursor position are saved per file and restored on opening.

## Terminal Color Schemes

- Install Nord: https://github.com/arcticicestudio/nord-terminal-app
- Install PaperColor: https://github.com/tomotargz/papercolor-terminal-app
