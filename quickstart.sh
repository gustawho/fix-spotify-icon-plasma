#! /usr/bin/env bash

set -e

wget -O fix-spotify-icon.sh https://raw.githubusercontent.com/gustawho/fix-spotify-icon-plasma/master/src/fix-spotify-icon.sh

chmod +x fix-spotify-icon.sh

sudo mv fix-spotify-icon.sh /usr/bin/fix-spotify-icon

fix-spotify-icon
