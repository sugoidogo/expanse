from docker.io/node
add LICENSE /LICENCE
add backend /backend
add frontend /frontend
workdir /frontend
run npm ci
run npm run build
workdir /backend
run npm ci
expose 1301
env DOCKER="true"
volume /data
cmd ["npm","run","docker"]