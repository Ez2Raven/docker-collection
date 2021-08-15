A Ubuntu 20.04 image with the following packages installed for learning wireguard and coredns

* tzdata 
* bash
* curl
* locales 
* iproute2 
* iputils-ping 
* wireguard 
* dnsutils 

To use this image, simply run start.sh

A folder named "workspace" will be created and mounted in the docker container as "/workspace" 

```bash
/start.sh
```