#!/bin/bash
set -e

echo 'Boostrapping your computer...'

# Install xcode command line tools
if [[ ! -x `xcode-select -p 2>/dev/null` ]]; then
  xcode-select --install
  echo 'Press any key when the installation has completed.'
  read -n 1
fi

# Install homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
  echo 'Installing homebrew...'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install pip
if [[ ! -x `which pip` ]]; then
  echo 'Installing pip...'
  sudo easy_install pip
  sudo chown -R $USER /Library/Python/2.7/site-packages
  sudo chown -R $USER /System/Library/Frameworks/Python.framework/Versions/2.7/include/python2.7
fi

# Install ansible
if [[ ! -x `which ansible` ]]; then
  echo 'Installing ansible...'
  sudo pip install ansible --quiet
fi

# Clone short-stack
if [[ ! -d ~/.short-stack ]]; then
  git clone https://github.com/poetic/short-stack.git ~/.short-stack
fi

# Create /usr/local if it doesn't exist
if [[ ! -d /usr/local/bin ]]; then
  sudo mkdir -p /usr/local/bin
fi

# Install short-stack
if [[ ! -L /usr/local/bin/short-stack ]]; then
  sudo ln -s ~/.short-stack/short-stack /usr/local/bin/short-stack
fi

# Run short-stack unless skip flag present
if [[ $1 != "--skip-short-stack" ]]; then
  /usr/local/bin/short-stack
fi
