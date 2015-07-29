# Docker for [emqtt](http://emqtt.io/)
## How to use
### Install docker network tool to fix IP address
[Weave](http://weave.works/) or [Calico](http://www.projectcalico.org)
### First Node
docker run -d --name node1 -e NODE_IP=<YOUR_SERVER_IP> -p 1883:1883 -p 8883:8883 -p 8083:8083 philipz/emqtt
### Second Node and more
docker run -d --name node2 -e NODE_IP=<YOUR_SERVER_IP> -e MASTER=<FIRST_NODE_IP> -p 1883:1883 -p 8883:8883 -p 8083:8083 philipz/emqtt
