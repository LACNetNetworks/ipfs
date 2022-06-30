# Deploying a Node

* Below you will find instructions for the deployment of nodes ipfs on **Kubernetes** using **HELM**. This implies that it will be executed from a local machine on a remote server. The local machine and the remote server will communicate via helm.

* The installation with kubernetes manifests  is compatible with **Google Kubernetes Engine** .



## Minimum System Requirements

Recommended hardware features for IPFS node:

| Recommended Hardware | On Mainnet-Omeg
|:---:|:---:|
| CPU | 2 vCPUs |
| RAM Memory | 2 GB |
| Hard Disk | 10 GB SSD 

* **Kubernetes**: Google Kubernestes Engine GKE.

It is necessary to enable the following network ports in the machine in which we are going to deploy the node:

* **IPFS Peers**:
  * **4001**: TCP - Port to establish Communication p2p with other peers.

  * **5001**: TCP - API Server.

  * **8080**: TCP - Gateway server.

## Pre-requisites

### Install Kubectl ###

For this installation we will use Kubectl. It is necessary to install Kubectl on a **local machine** that will perform the installation of the node on a **kubernetes cluster**.

Following the instructions to [install kubectl](https://kubernetes.io/docs/tasks/tools/) in your local machine.

### Install Helm ###

For this installation we will use Helm. It is necessary to install helm on a **local machine** that will perform the installation of the node on a **kubernetes cluster**.

Following the instructions to [install helm](https://helm.sh/docs/intro/install/) in your local machine.

### Clone Repository ####

To configure and install IPFS node, you must clone this git repository in your **local machine**.

```shell
$  git clone https://github.com/LACNetNetworks/ipfs.git
$ cd ipfs/helm/
```



## Node Installation ##


### Values variable ###

*  There are four types of values **ipfs.yml**.

*  The values ​​you have to set are in the **deploy** section. These are the following:

* **Values**:

  * **logging**: LOGGING  - Level logging IPFS (INFO, DEBUG) - default INFO.

  * **publicIP**: TCP Public IP Ingress.   

### Set value to environment variable ###
* **TCP Public IP Ingress**: Generate a *_static public IP_* in your cloud provider. Then replace the public ip in the load balance *_(loadBalancerIP)_* service manifest. finally update the **publicIP** environment variable with this IP.




### Deploying the new node ###

* You need  execute  the following command:

    <span style="color:yellow "> Note: This deployment is compalitible only  Google Kubernestes Engine GKE<span> 



 * To deploy a **Node IPFS**     
      
      ```shell
      $ helm install <chart-name>  ./charts/ipfs-node --namespace  <namespace-name> --create-namespace --values ./values/ipfs.yml 
    
      ```

* e.g. deploy **IPFS Node** on **Mainnet-Omega**  network
 
    ```shell
      $ helm install bid  ./charts/ipfs-node --namespace  lacnet-ipfs  --create-namespace --values ./values/ipfs.yml
    ```


	
## Checking your connection

You can check if your ipfs node  is connected to the network LAC_Net.

Check that the node has stablished the connections with the peers:

```shell

$ curl http://<PUBLIC_IP>:8080/ipfs/QmT7doZQU171dk3XmixagjVrT73dj8MP4XXqLj6EBTWyHA
```


You should get a result like this:

```
  welcome to ipfs LACNet
```



You should get something like this:

Now you can check if the node is runing  by getting the log:

```shell
$ kubectl logs <pod name> -f --namespace  <namespace-name>
```


if you need to update the node, try redeploy the ipfs node: e.g.

```shell
$ helm upgrade <chart-name> ./charts/ipfs-node --namespace  <namespace-name>  --values ./values/ipfs.yml 
```

If any of these two checks doesn't work, try to restart the ipfs service: e.g. 

```shell
$ kubectl delete pod <pod name> -n <namespace>
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
