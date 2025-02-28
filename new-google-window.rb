#!/usr/bin/env ruby

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title New Google Window
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Google Utils

# Documentation:
# @raycast.description Opens a new Google Chrome window even if one is already open
# @raycast.author daniel-grinevich
# @raycast.authorURL https://raycast.com/daniel-grinevich

require "open3"

# Define the AppleScript command as a string
apple_script = 'tell application "Google Chrome" to make new window'

# Execute the AppleScript using osascript
stdout, stderr, status = Open3.capture3("osascript", "-e", apple_script)

if status.success?
  puts "New Google Chrome window opened."
else
  puts "Error opening new window: #{stderr}"
  exit 1
end