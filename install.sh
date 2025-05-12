#!/bin/bash

# isntall apt related items
source apt.sh


#install stuff that needs to be built manually
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || true
curl -sS https://starship.rs/install.sh | sh
