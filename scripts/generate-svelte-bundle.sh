#!/usr/bin/env bash

NODE_VERSION=14

BUILD_CONTAINER=$(buildah from node:$NODE_VERSION)
buildah config --workingdir='/build' $BUILD_CONTAINER

# Build Svelte bundle
buildah copy $BUILD_CONTAINER . .
buildah run $BUILD_CONTAINER -- npm ci
buildah run $BUILD_CONTAINER -- npm run export

# Extract bundle from build container
MOUNT=$(buildah mount $BUILD_CONTAINER)
cp -r $MOUNT/build/__sapper__/export/. $SVELTE_BUNDLE
buildah umount $BUILD_CONTAINER

buildah rm $BUILD_CONTAINER