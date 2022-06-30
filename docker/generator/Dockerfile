FROM ipfs/go-ipfs:v0.13.0
COPY ./files/bootstrap_list /tmp
COPY ./files/swarm.key /keys/swarm.key
COPY ./files/docker-entrypoint.sh /container-init.d/docker-entrypoint.sh
RUN chmod 0755 /container-init.d/docker-entrypoint.sh




