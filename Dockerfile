FROM google/cloud-sdk:alpine

RUN apk update \
    && apk add --no-cache \
        py-pip \
        gettext \
        ruby \
        ruby-bundler \
    && pip install \
        docker-compose \
    && gcloud components install kubectl

Run gem install rdoc; exit 0

Run gem install \
    rake \
    serverspec \
    docker-api
