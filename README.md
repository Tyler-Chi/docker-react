# current docker configuration notes:

## docker-compose.yml
docker-compose up\
primarily for local development. this uses docker volumes so the container references\
local files during development. this makes it so local changes are immediately reflected\
in the running container, without having to rebuild the image and rerun the container

this .yml specifies port mapping, as well as the various docker volumes

## Dockerfile
Dockerfile for use in production.\
Two build phases:
- npm install (dependencies) npm run build (builds)\
- uses nginx to automatically serve up the web contents