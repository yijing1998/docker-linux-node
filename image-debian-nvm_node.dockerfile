ARG OSTAG=latest
FROM debian:${OSTAG}

RUN apt-get update && apt-get install git curl -y

ARG NVM_GIT_URL=https://github.com/creationix/nvm.git
ARG NVM_FOLDER=/nvm
ARG NODE_VERSION=v11.1.0
RUN git clone ${NVM_GIT_URL} ${NVM_FOLDER} && cd ${NVM_FOLDER} && git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)` && . ${NVM_FOLDER}/nvm.sh && nvm install ${NODE_VERSION} && echo "PATH=/bin/versions/node/${NODE_VERSION}/bin:\${PATH}" >> /root/.bashrc && npm install hexo-cli -g