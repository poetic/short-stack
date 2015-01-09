#!/bin/bash
set -e

echo 'Boostrapping your computer...'

# Xcode Command Line Tools
if [[ ! -x `xcode-select -p 2>/dev/null` ]]; then
  xcode-select --install
fi

# Clone Short Stack
if [[ ! -d ~/.short-stack ]]; then
  git clone https://github.com/poetic/short-stack.git ~/.short-stack
fi

# Create /usr/local if it doesn't exist
if [[ ! -d /usr/local/bin ]]; then
  sudo mkdir -p /usr/local/bin
fi

# Install Short Stack
if [[ ! -x `which short-stack` ]]; then
  sudo ln -s ~/.short-stack/short-stack /usr/local/bin/
fi

# Run Short Stack
short-stack
