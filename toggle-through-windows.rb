#!/usr/bin/env ruby

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Through Windows
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Mac Utils

# Documentation:
# @raycast.description Simulates Command + ` to toggle through the open windows of the current app.
# @raycast.author daniel-grinevich
# @raycast.authorURL https://raycast.com/daniel-grinevich

require "open3"

# AppleScript to simulate pressing Command + `
apple_script = 'tell application "System Events" to keystroke "`" using command down'

stdout, stderr, status = Open3.capture3("osascript", "-e", apple_script)

if status.success?
  # Optionally, you can print a message for debugging:
  # puts "Toggled windows successfully."
else
  puts "Error toggling windows: #{stderr}"
  exit 1
end