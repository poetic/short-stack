#!/bin/bash
set -e
echo '
       ooMMMo
    ooMMoMMoMMMoo
 oMMM"MoM" "M"MM"MMo
MMMoM""       ""MMM"M                            M   M"
MM"M     o o     M"MM     oooMoo  ooMoo   ooMo  MMoo oo  ooMoo
MMMM    "MMMo    MMMo     MM   M Mo"  MM M"o MM "M   "M "M
MoMM   "MMM"M    MMMM     Mo   M"Mo   oM"MM " "  Mo  MM MM
M"MM    M""      MMoM     "MoMM"  "MoM"  "oMoM" "MoM Mo  "oMo"
MMMM    M     oMM"MMo     M"
 "oM   "" ooMM"MMM""
        MMM"MMM"
        "M"M"
'

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
