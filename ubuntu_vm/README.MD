sudo docker-compose run ubuntu-vm bash

apt update && apt install -y iproute2 iputils-ping wireguard dnsutils

target=<container id or container name>
docker run -it --net=container:$target --pid=container:$target \
--volumes-from=$target alpine sh