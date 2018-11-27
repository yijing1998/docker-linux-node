FROM djangoyi/debian-node

# Env $PATH value must be set
RUN . /root/.bashrc && npm install hexo-cli -g