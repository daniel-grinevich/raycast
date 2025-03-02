#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title open-icloud-dev
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Mac Utils

# Documentation:
# @raycast.description opens iCloud directory for me in terminal
# @raycast.author daniel-grinevich
# @raycast.authorURL https://raycast.com/daniel-grinevich

osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$HOME/Library/Mobile Documents/com~apple~CloudDocs/Documents/dev\""
end tell
EOF
