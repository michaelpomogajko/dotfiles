#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Hide/show desktop
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🖥
# @raycast.argument1 { "type": "text", "placeholder": "hide/show" }

# Documentation:
# @raycast.description Hide or show desktop icons

if [[ $1 == "hide" ]]; then
    defaults write com.apple.finder CreateDesktop -bool false
    killall Finder
elif [[ $1 == "show" ]]; then
    defaults write com.apple.finder CreateDesktop -bool true
    killall Finder
else
    echo "Argument1 must be either 'hide' or 'show'"
fi