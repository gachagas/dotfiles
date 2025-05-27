#!/bin/bash

# This script uses GNU stow to create symlinks for dotfiles
# GNU stow creates symlinks from the parent directory of where stow is run
# to the actual files in the repo.

stow gitconfig
stow mise
stow starship
stow zsh