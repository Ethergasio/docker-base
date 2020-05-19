FROM node:12-buster

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
  && apt-get install -y --no-install-recommends \
  python3.6 python3-pip \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update -y \
  && apt-get install -y python3-setuptools build-essential libssl-dev libffi-dev python3-dev gcc \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/bash"]