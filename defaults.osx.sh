#!/bin/sh

# set the default view in Finder to be Column View
defaults write com.apple.Finder FxPreferredViewStyle clmv

# Instant window resizing
defaults write -g NSWindowResizeTime -float 0.003

# Notification Centre be gone!

defaults write /System/Library/LaunchAgents/com.apple.notificationcenterui KeepAlive -bool false
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist

# So we don't have to restart.

killall Finder
killall NotificationCenter
