#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x683D2BeFFca339034B141848748DfFcDBbc90143
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
