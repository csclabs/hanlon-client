# Hanlon Client

This docker container is for the [Hanlon](https://github.com/csc/Hanlon) client.

## Build Image


Clone the repo.

`git clone https://github.com/jcpowermac/hanlon-client.git`

Create a local docker image.

`docker build -t jcpowermac/hanlon-client .`

## Run Hanlon client 

Modify the `config/hanlon_client.conf`

SELinux permissions need to be resolved, [source.](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Resource_Management_and_Linux_Containers_Guide/sec-Sharing_Data_Across_Containers.html

`chmod 755 fix-selinux.sh`

Then run...

`docker run -it -v ~/Development/hanlon-client/config/:/home/hanlon/cli/config/ jcpowermac/hanlon-client config`
