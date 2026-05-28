#!/usr/bin/env bash

cd ./invidious-companion || exit
deno compile --include ./src/lib/helpers/youtubePlayerReq.ts --include ./src/lib/helpers/getFetchClient.ts --output ../invidious_companion --allow-import=github.com:443,jsr.io:443,raw.githubusercontent.com:443,esm.sh:443,deno.land:443 --allow-net --allow-env --allow-read --allow-sys=hostname --allow-write=/var/tmp/youtubei.js src/main.ts
