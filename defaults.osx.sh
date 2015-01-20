#!/bin/sh
defaults write com.apple.Finder FxPreferredViewStyle clmv
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist
defaults write -g NSWindowResizeTime -float 0.003
sudo defaults write /System/Library/LaunchAgents/com.apple.notificationcenterui KeepAlive -bool false

killall Finder
killall NotificationCenter
