#!/usr/bin/env bash

cd ./invidious-companion || exit
git am ../patches/*.patch -3
