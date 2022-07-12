#!/bin/bash

# Downloads the server repository if the repo folder does not exist
if [ -d "./zwave-js-server" ]
then
  echo "Starting the server in /zwave-js-server/src/bin/server.ts"
else
  echo "Downloading server wrapper..."
  git clone https://github.com/zwave-js/zwave-js-server.git
  echo "Running the server..."
fi

echo "Server starting on 'ws://0.0.0.0:3000'"
cd zwave-js-server
ts-node src/bin/server.ts /dev/tty0
