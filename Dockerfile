FROM ruby:2.6-slim

RUN apt-get update && apt-get install -y \
  git \
  build-essential \
  patch \
  ruby-dev \
  zlib1g-dev \
  liblzma-dev

ARG USERNAME=ruby
ARG USER_UID=2001
ENV HOME /home/${USERNAME}

RUN useradd -U ${USERNAME} -s /bin/bash

WORKDIR ${HOME}/app

RUN chown -R ${USERNAME}:${USERNAME} ${HOME}

USER ${USERNAME}