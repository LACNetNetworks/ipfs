# Deploy IPFS on NODE Lacchain 

* Quickly deploy an ipfs node using **docker** [here](https://github.com/LACNetNetworks/ipfs/blob/master/DEPLOY_NODE_DOCKER.md).

* If you want to deploy an ipfs node on **kubernetes** following the instructions [here](https://github.com/LACNetNetworks/ipfs/blob/master/DEPLOY_NODE_HELM.md).


* Bellow you will find instructions about deployment  of ipfs  peers lacchain using Ansible. This implies that it will be executed from a local machine to a remote server. The local machine and the remote server will communicate via ssh.

* The installation with ansible provided is compatible with **Ubuntu** 
## Minimum System Requirements

Recommended hardware features for ipfs peers :

* **CPU**: 2 cores

* **RAM Memory**: 2 GB

* **Hard Disk**: 10 GB SSD

* **Operating System**: Ubuntu 18.04, Ubuntu 20.04,  always 64 bits

It is necessary to enable the following network ports in the machine in which we are going to deploy ipfs peers:

* **IPFS Peers**:
  * **4001**: TCP - Port to establish Communication p2p with other peers.

  * **5001**: TCP - API Server.

  * **8080**: TCP - Gateway server.

## Pre-requisites

### Install Ansible ###

For this installation we will use Ansible. It is necessary to install Ansible on a **local machine** that will perform the installation of the peers on a **remote machine**.

Following the instructions to [install ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) in your local machine.

### Clone Repository ####

To configure and install IPFS , you must clone this git repository in your **local machine**.

```shell
$ git clone https://github.com/LACNetNetworks/ipfs
$ cd ipfs/
```

### Obtain SSH access to your remote machine ###

Make sure you have SSH access to nodes you're setting up. This step will vary depending on your context (physical machine, cloud provider, etc.). This document assumes that you are able to log into your remote machine using the following command: `ssh remote_user@remote_host`.

## IPFS Installation ##

### Preparing installation of a new  ipfs peers  ###


* After cloning the repository on the **local machine**, edit `inventory` file  to add a line for the remote server where you are deploying the new ipfs peers. You can do it with a graphical tool or inside the shell:

    ```shell
    $ cd ipfs/
    $ vi inventory
    [ipfs]#  depending on type node
    192.168.10.72 ---> Change for your IP Node
    ```
### Deploying the new node ###

* To deploy a **IPFS peers**  execute the following command in your **local machine**. If needed, don't forget to set the private key with option `--private-key` and the remote user with option `-u`:

	```shell
	$ ansible-playbook -i inventory --private-key=~/.ssh/id_rsa -u remote_user site-lacchain-ipfs.yml


# Contact

For any issues, you can either go to [issues](https://github.com/LACNetNetworks/ipfs/issues) or e-mail us at  tech-support@lac-net.net .  Any feedback is more than welcome!

&nbsp;
&nbsp;


## Copyright 2022 LACNet
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

