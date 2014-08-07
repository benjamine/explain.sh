#!/usr/bin/env sh
#
# Open explainshell.com explaining a shell command
#
# Usage: explain <command>

URL="$*"

if [ -z "$URL" ]; then
  echo "Usage: explain.sh <command>"
  exit
fi

# lame url encoding
URL=$(echo "$URL" | sed -e 's/%/%25/g')
URL=$(echo "$URL" | sed -e 's/ /%20/g')
URL=$(echo "$URL" | sed -e 's/!/%21/g')
URL=$(echo "$URL" | sed -e 's/"/%22/g')
URL=$(echo "$URL" | sed -e 's/#/%23/g')
URL=$(echo "$URL" | sed -e 's/\$/%24/g')
URL=$(echo "$URL" | sed -e 's/\&/%26/g')
URL=$(echo "$URL" | sed -e 's/'\''/%27/g')
URL=$(echo "$URL" | sed -e 's/'\('/%28/g')
URL=$(echo "$URL" | sed -e 's/'\)'/%29/g')
URL=$(echo "$URL" | sed -e 's/\*/%2a/g')
URL=$(echo "$URL" | sed -e 's/+/%2b/g')
URL=$(echo "$URL" | sed -e 's/,/%2c/g')
URL=$(echo "$URL" | sed -e 's/-/%2d/g')
URL=$(echo "$URL" | sed -e 's/\./%2e/g')
URL=$(echo "$URL" | sed -e 's/\//%2f/g')
URL=$(echo "$URL" | sed -e 's/:/%3a/g')
URL=$(echo "$URL" | sed -e 's/;/%3b/g')
URL=$(echo "$URL" | sed -e 's/>/%3e/g')
URL=$(echo "$URL" | sed -e 's/?/%3f/g')
URL=$(echo "$URL" | sed -e 's/@/%40/g')
URL=$(echo "$URL" | sed -e 's/\[/%5b/g')
URL=$(echo "$URL" | sed -e 's/\\/%5c/g')
URL=$(echo "$URL" | sed -e 's/\]/%5d/g')
URL=$(echo "$URL" | sed -e 's/\^/%5e/g')
URL=$(echo "$URL" | sed -e 's/_/%5f/g')
URL=$(echo "$URL" | sed -e 's/`/%60/g')
URL=$(echo "$URL" | sed -e 's/{/%7b/g')
URL=$(echo "$URL" | sed -e 's/|/%7c/g')
URL=$(echo "$URL" | sed -e 's/}/%7d/g')
URL=$(echo "$URL" | sed -e 's/~/%7e/g')

URL="http://www.explainshell.com/explain?cmd=$URL"

cmd="$BROWSER"
if [ -z "$cmd" ]; then
  cmd="open"
fi
eval "$cmd \"$URL\""
