npm run build
CONTAINER=$(buildah from nginx:1.21.5-alpine)
buildah copy $CONTAINER build /usr/share/nginx/html
buildah commit --rm $CONTAINER portfolio-website

docker run --rm -it -p 8080:80 portfolio-website