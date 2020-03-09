NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="167.179.86.184" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="167.179.86.184" EXPLORER_PORT="4200" pm2 start /home/covid/core-explorer/express-server.js --name explorer
