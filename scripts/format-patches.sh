#!/usr/bin/env bash

echo "Removing old patches"
rm ./patches/*.patch
cd ./invidious-companion || exit
git format-patch origin/HEAD --output-directory ../patches
