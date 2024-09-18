#!/bin/sh

/usr/local/bin/geth \
  --dev --dev.period 1 \
  --password /root/geth.password \
  --unlock "0" --syncmode full --gcmode archive \
  --authrpc.vhosts "*" --authrpc.addr "0.0.0.0" --http --http.addr "0.0.0.0" --http.api web3,eth,net,personal,miner,txpool,debug --http.corsdomain '*' --http.vhosts "*" \
  --ws --ws.api eth,net,web3,personal,txpool --ws.addr "0.0.0.0" --ws.port "8546" --ws.origins '*' \
  --datadir /root/.ethereum --nodiscover \
  --miner.gasprice "0" \
  --allow-insecure-unlock \
  $@
