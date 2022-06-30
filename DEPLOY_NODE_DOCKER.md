# Deploying a Node

* Below you will find instructions for the deployment of ipfs nodes  using docker-compose . This implies that it will run on your local machine and you must have docker and docker compose installed.




## Minimum System Requirements

Recommended hardware features for IPFS node:

| Recommended Hardware | On Mainnet-Omeg
|:---:|:---:|
| CPU | 2 vCPUs |
| RAM Memory | 2 GB |
| Hard Disk | 10 GB SSD 


* **Docker Host**:

It is necessary to enable the following network ports in the machine in which we are going to deploy the ipfs node:

* **IPFS Peers**:
  * **4001**: TCP - Port to establish Communication p2p with other peers.

  * **5001**: TCP - API Server.

  * **8080**: TCP - Gateway server.

## Pre-requisites

### Install Docker Desktop ###

For this installation we will use docker-compose. It is necessary to install **docker** and **docker-compose** on a local machine that will perform the installation of the node .

Following the instructions to [install docker desktop](https://docs.docker.com/desktop/#download-and-install) in your local machine.



### Clone Repository ####

To configure and install IPFS node, you must clone this git repository in your **local machine**.

```shell
$ git clone https://github.com/LACNetNetworks/ipfs.git
$ cd ipfs/docker/compose
```



## Node Installation ##



### environment variable ###
* **IPFS Node**:

  * **IPFS_LOGGING**: LOGGING  - Level logging IPFS (INFO, DEBUG) - default INFO.

  * **IPFS_SWARM_KEY_FILE**: Path swarm key to private network.  

  * **IPFS_PATH**: Path ipfs data.

  * **LIBP2P_FORCE_PNET**:  Force private network.


### Deploying the new node ###



 * To deploy a **IPFS Node**     
      
      ```
      $ docker-compose  up -d
      ```



	
## Checking your connection

You can check if your ipfs node  is connected to the network LAC_Net.

Check that the node has stablished the connections with the peers:

```shell

$ curl http://localhost:8080/ipfs/QmT7doZQU171dk3XmixagjVrT73dj8MP4XXqLj6EBTWyHA
```

You should get a result like this:

```
  welcome to ipfs LACNet
```

Now you can check if the node is syncing blocks by getting the log:

```shell
$ docker logs <container name> -f 
$ docker logs ipfs-lacchain  -f
```



If any of these two checks doesn't work, try to restart the besu service: e.g.

```shell
$ docker-compose  stop
$ docker-compose  up -d
```

If that doesn't solve the problem, [open a ticket](https://lacnet.lacchain.net/support/) if you already have a membership or contact us at tech.support@lac-net.net.
	


## Contact

For any issues, you can either go to [issues](https://github.com/LACNet-Networks/besu-pro-testnet/issues) or e-mail us at tech-support@lac-net.net. Any feedback is more than welcome!

## Copyright 2022 LACNet

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
