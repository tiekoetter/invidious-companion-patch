#!/usr/bin/env bash

echo "Testing before pushing :3"

sh -c './reset-companion-repo.sh'
sh -c './apply-patches.sh'
cd ./invidious-companion || exit
git am --abort

deno_check='deno check src/**'

if eval "$deno_check"; then
  echo "Deno check successfull. Pushing :3"
  cd ..
  sh -c './reset-companion-repo.sh'
  git push origin master
else
  echo "Failed to execute $deno_check, check the repo :3"
  sh -c './reset-companion-repo.sh'
fi
