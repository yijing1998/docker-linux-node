# docker-linux-node
Dockerfiles for creating linux nodejs environment(including npm) using [NVM](https://github.com/creationix/nvm). Use these dockerfiles, you can create base docker images for node applications.

## File name convention
image-*{osname}*-node.dockerfile

*{osname}*: which linux distribution the dockerfile uses.

## Dockerfile args
The dockerfiles use some ARGs and you can change these ARGs' value during building time using the command like this: `docker build --build-arg arg1=value1 arg2=value2 ...`
ARG Name | Default Value | Comments
|---|---|---|
| OS_TAG | latest | Available OS docker-image tags from [store.docker.com](store.docker.com) |
| NODE_VERSION | v11.1.0 | Available nodejs versions from `nvm ls-remote` (run the command on your PC with nvm installed) |

***Warnings: Be Careful to use the ARG values! It's on YOU to check the correction of the ARG values or you will fail to build docker-images.***

## How to use?
Use *image-debian-node.dockerfile* in following examples.
```shell
docker build -t {yourid/imagename:tag} -f image-debian-node .
```

Or
```
docker build --build-arg OS_TAG=jessie -t {yourid/imagename:tag} -f image-debian-node .
```

Or
```
docker build --build-arg NODE_VERSION=v10.13.0 -t {yourid/imagename:tag} -f image-debian-node .
```
