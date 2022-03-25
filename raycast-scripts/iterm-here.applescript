#!/usr/bin/osascript

# @raycast.title Start iTerm here
# @raycast.author Michael Pomogajko
# @raycast.description Start iTerm here

# @raycast.icon 💻
# @raycast.mode silent
# @raycast.schemaVersion 1

tell application "Finder"
    set pathList to (quoted form of POSIX path of (folder of the front window as alias))
    set command to "clear; cd " & pathList
end tell
  
tell application "System Events"
  -- some versions might identify as "iTerm" instead of "iTerm2"
  set isRunning to (exists (processes where name is "iTerm")) or (exists (processes where name is "iTerm"))
end tell
  
tell application "iTerm"
  activate
  set hasNoWindows to ((count of windows) is 0)
  if isRunning and hasNoWindows then
    create window with default profile
  end if
  select first window
  
  tell the first window
    if isRunning and hasNoWindows is false then
      create tab with default profile
    end if
    tell current session to write text command
  end tell
end tell