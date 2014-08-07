#!/usr/bin/env sh

if [ -f /usr/bin/explain.sh ]; then
  echo "explain.sh already installed"
  exit
fi
echo "installing..."
curl --silent https://benjamine.github.io/explain.sh/explain.sh > sudo /usr/bin/explain.sh
echo "explain.sh installed"
