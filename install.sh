#!/usr/bin/env sh

if [ -f /usr/bin/explain.sh ]; then
  echo "explain.sh already installed"
  exit
fi
echo "installing..."
sudo curl --silent https://benjamine.github.io/explain.sh/explain.sh --output /usr/bin/explain.sh
sudo chmod +x /usr/bin/explain.sh
echo "explain.sh installed"
