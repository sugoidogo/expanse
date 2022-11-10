from docker.io/node
add LICENSE /LICENCE
add backend /backend
add frontend /frontend
add build.cmd /build.cmd
run sh build.cmd
workdir /backend
expose 1301
env DOCKER="true"
volume /data
cmd ["npm","run","docker"]