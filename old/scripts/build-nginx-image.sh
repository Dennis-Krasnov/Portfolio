#!/usr/bin/env bash

NGINX_VERSION=1.19-alpine

CONTAINER=$(buildah from nginx:$NGINX_VERSION)
buildah config --author='Dennis Krasnov' $CONTAINER
buildah config --workingdir='/app' $CONTAINER

# Configure Nginx
buildah run $CONTAINER -- rm /etc/nginx/conf.d/default.conf
buildah copy $CONTAINER nginx.conf /etc/nginx/conf.d/portfolio.conf
buildah copy $CONTAINER $SVELTE_BUNDLE .
buildah run $CONTAINER -- nginx -t || exit 1

buildah commit $CONTAINER portfolio-web
buildah rm $CONTAINER