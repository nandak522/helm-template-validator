FROM alpine:3.12

ARG HELM_VERSION

ENV BASE_URL="https://get.helm.sh" \
    TAR_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"

RUN apk add --update --no-cache tar curl ca-certificates \
    && curl -L ${BASE_URL}/${TAR_FILE} | tar -xvz \
    && mv linux-amd64/helm /usr/bin/helm \
    && chmod +x /usr/bin/helm \
    && rm -rf linux-amd64 \
    && apk del curl \
    && rm -f /var/cache/apk/*

CMD [ "helm" ]
