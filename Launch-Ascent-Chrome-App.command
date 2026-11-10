#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -d "/Applications/Google Chrome.app" ]; then
  open -na "Google Chrome" --args --app="file://$DIR/ascent-sheet.html"
else
  google-chrome --app="file://$DIR/ascent-sheet.html" || chromium --app="file://$DIR/ascent-sheet.html"
fi
