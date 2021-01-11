#!/usr/bin/env bash

NODE_VERSION=14
NGINX_VERSION=1.19-alpine
SVELTE_BUNDLE=$(mktemp -d -t "$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXXXX")

main() {
    generate_svelte_bundle
    build_nginx_image
}

generate_svelte_bundle () {
    local BUILD_CONTAINER=$(buildah from node:$NODE_VERSION)
    buildah config --workingdir='/build' $BUILD_CONTAINER

    # Build Svelte bundle
    buildah copy $BUILD_CONTAINER . .
    buildah run $BUILD_CONTAINER -- npm ci
    buildah run $BUILD_CONTAINER -- npm run export

    # Extract bundle from build container
    local MOUNT=$(buildah mount $BUILD_CONTAINER)
    cp -r $MOUNT/build/__sapper__/export/. $SVELTE_BUNDLE
    buildah umount $BUILD_CONTAINER

    buildah rm $BUILD_CONTAINER
}

build_nginx_image () {
    local CONTAINER=$(buildah from nginx:$NGINX_VERSION)
    buildah config --author='Dennis Krasnov' $CONTAINER
    buildah config --workingdir='/app' $CONTAINER

    # Configure Nginx
    buildah run $CONTAINER -- rm /etc/nginx/conf.d/default.conf
    buildah copy $CONTAINER nginx.conf /etc/nginx/conf.d/portfolio.conf
    buildah copy $CONTAINER $SVELTE_BUNDLE .
    buildah run $CONTAINER -- nginx -t || exit 1

    buildah commit $CONTAINER portfolio-web
    buildah rm $CONTAINER
}

main "$@"
exit