#!/bin/bash
set -euxo pipefail


if mise list 2>/dev/null | grep -q rust; then
    echo "✅ Rust is installed via mise"
    cd ~
    mkdir delete
    cd delete
    git clone https://github.com/alacritty/alacritty.git
    cd alacritty

    # install alacritty deps
    # apt install cmake g++ pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3\

else
  echo "⚠️  Warning: Rust is not installed. Please install rust using mise first."
  echo "    Run: mise install rust"
  exit 1
fi

