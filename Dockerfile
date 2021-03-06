FROM node:12-alpine

LABEL "com.github.actions.name"="Hexo for GitHub Pages"
LABEL "com.github.actions.description"="Builds and deploys the project to GitHub Pages"
LABEL "com.github.actions.icon"="home"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/NKjoep/gh-actions-hexo-deploy-gh-pages"
LABEL "homepage"="https://github.com/NKjoep/gh-actions-hexo-deploy-gh-pages"
LABEL "maintainer"="Andrea D. <nkjoep@gmail.com>"

LABEL "Name"="Hexo for GitHub Pages"
LABEL "Version"="0.1.2"

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apk add --no-cache \
        git \
        openssh-client \
        libc6-compat \
        libstdc++

RUN npm install -g hexo-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
