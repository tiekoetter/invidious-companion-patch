#!/usr/bin/env bash

echo "Reseting invidious-companion repository (git reset --hard origin/HEAD)"
sh -c './reset-companion-repo.sh'
echo "Applying patches (git am ../patches/*.patch)"
sh -c './apply-patches.sh'
echo "Building container image"

docker_cmd='docker buildx build ./invidious-companion'
if eval "$docker_cmd"; then
	echo "Build done, Reseting invidious-companion repository (git reset --hard origin/HEAD)"
else
	echo "Failed to execute $docker_cmd"
fi

sh -c './reset-companion-repo.sh'
echo "Done!"
