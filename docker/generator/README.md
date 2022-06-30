# Generate image Docker to deploy nodes ipfs Lacnet.


* Below you will find instructions for the compile image docker for nodes ipfs.

* **Ipfs image**
Generate a image ipfs with the following command:

    ```shell
    $ ./image-ipfs.sh
    ```

* Push image to Docker hub 
    ```shell
    $ docker push lacnetnetworks/ipfs:0.13.0
    ```