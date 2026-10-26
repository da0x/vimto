#!/bin/bash
set -e

VIMTO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== vimto setup ==="

# Clone plugins into native package directories
mkdir -p "$VIMTO_DIR/pack/plugins/start"
mkdir -p "$VIMTO_DIR/pack/plugins/opt"

if [ ! -d "$VIMTO_DIR/pack/plugins/start/nord-vim" ]; then
    echo "Installing nord-vim..."
    git clone https://github.com/arcticicestudio/nord-vim.git \
        "$VIMTO_DIR/pack/plugins/start/nord-vim"
else
    echo "nord-vim already installed."
fi

if [ ! -d "$VIMTO_DIR/pack/plugins/opt/lsp" ]; then
    echo "Installing yegappan/lsp..."
    git clone https://github.com/yegappan/lsp.git \
        "$VIMTO_DIR/pack/plugins/opt/lsp"
else
    echo "yegappan/lsp already installed."
fi

# Generate helptags
echo "Generating helptags..."
vim -u NONE -c "helptags $VIMTO_DIR/pack/plugins/opt/lsp/doc" -c q

# Install language servers
echo ""
echo "=== Language servers ==="

missing=()
for server in gopls typescript-language-server clangd; do
    if command -v "$server" &> /dev/null; then
        echo "$server found: $(command -v "$server")"
    else
        case "$server" in
            clangd) missing+=(clang) ;;
            *) missing+=("$server") ;;
        esac
    fi
done

if [ ${#missing[@]} -gt 0 ]; then
    echo "Missing language servers. Install them: sudo pacman -S ${missing[*]}"
fi

echo ""
echo "=== Done ==="
echo "Add this to your ~/.vimrc:"
echo "  source $VIMTO_DIR/vimto.vim"
