#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Ray.app"
dockutil --no-restart --add "/Applications/Tinkerwell.app"
dockutil --no-restart --add "/Applications/Firefox Developer Edition.app"
dockutil --no-restart --add "/Applications/Visual Studio Code - Insiders.app"
dockutil --no-restart --add "/Applications/TablePlus.app"
dockutil --no-restart --add "/Applications/Slack.app"

killall Dock

echo "Success! Dock is set."
