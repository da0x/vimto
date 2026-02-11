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

if command -v go &> /dev/null; then
    echo "Installing gopls..."
    go install golang.org/x/tools/gopls@latest
else
    echo "Go not found — skipping gopls install."
fi

if command -v npm &> /dev/null; then
    echo "Installing typescript-language-server..."
    npm install -g typescript typescript-language-server
else
    echo "npm not found — skipping typescript-language-server install."
fi

if command -v clangd &> /dev/null; then
    echo "clangd found: $(which clangd)"
else
    echo "clangd not found. Install it: sudo pacman -S clang"
fi

echo ""
echo "=== Done ==="
echo "Add this to your ~/.vimrc:"
echo "  source $VIMTO_DIR/vimto.vim"
