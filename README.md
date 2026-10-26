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

## Terminal Color Schemes

- Install Nord: https://github.com/arcticicestudio/nord-terminal-app
- Install PaperColor: https://github.com/tomotargz/papercolor-terminal-app
