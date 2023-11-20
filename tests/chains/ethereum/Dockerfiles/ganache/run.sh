#!/bin/sh

node "/app/dist/node/cli.js" \
  --chainId $CHAINID \
  --networkId $NETWORKID \
  --db /root/.ethereum \
  --defaultBalanceEther 10000 \
  --mnemonic "math razor capable expose worth grape metal sunset metal sudden usage scheme" \
  --blockTime 1 \
  --debug \
  $@
