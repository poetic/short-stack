![Short Stack](https://raw.githubusercontent.com/poetic/short-stack/master/assets/shortstack-logo-v1.jpg)

[![Build Status](https://travis-ci.org/poetic/short-stack.svg)](https://travis-ci.org/poetic/short-stack)
[![Join the chat at https://gitter.im/poetic/short-stack](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/poetic/short-stack?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Automate and maintain your Mac development environment in an easily maintainable and highly modular fashion.

## Installation

`bash <(curl -s curl -L https://raw.githubusercontent.com/poetic/short-stack/master/install.sh)`

## Usage

Running `short-stack` will update short-stack if any updates are available and then it will provision your
system to match your ~/.stack.yml file.

See `short-stack --help` for full details on the `short-stack` command.

## Additional Roles

To add more roles, first add a line to ~/.galaxy.yml so that they will be downloaded. Then add the appropriate configuration to your ~/.stack.yml file.

Visit https://github.com/poetic/?query=short-stack to view a list of additional roles. View each role's tests/galaxy.yml and tests/stack.yml file for an example on how to use/integrate.

## stack.d

By tweaking the config files for tmux, vim (spf13) and zsh (oh-my-zsh) we were able to add a .d structure that allows any files dropped inside to be picked up.
Each role can add configuration to tmux, vim or zsh. This allows complete integration with the shell environment without polluting the base configuration files.
The base configuration files over time tend to get bloated and hard to manage.

## Compatibility

Short Stack is being built and tested on OS X Yosemite (10.10) and OS X Mavericks (10.9).
