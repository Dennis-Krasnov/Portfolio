#!/usr/bin/env bash

NGINX_VERSION=1.19-alpine

CONTAINER=$(buildah from nginx:$NGINX_VERSION)
buildah config --author='Dennis Krasnov' $CONTAINER
buildah config --workingdir='/app' $CONTAINER

# Configure Nginx
buildah run $CONTAINER -- rm /etc/nginx/conf.d/default.conf
buildah copy $CONTAINER nginx.conf /etc/nginx/conf.d/portfolio.conf
buildah copy $CONTAINER $SVELTE_BUNDLE .

buildah run $CONTAINER -- ls -l /etc/nginx/conf.d/
buildah run $CONTAINER -- ls -l /app

buildah run $CONTAINER -- nginx -t || exit 1

buildah containers
buildah images

buildah commit $CONTAINER portfolio-web
buildah images
buildah rm $CONTAINER
buildah containers