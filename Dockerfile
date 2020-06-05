FROM alpine:3.12

ARG HELM_VERSION

ENV BASE_URL="https://get.helm.sh" \
    TAR_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"

RUN apk add --update --no-cache tar wget ca-certificates \
    && wget -c ${BASE_URL}/${TAR_FILE} -O - | tar -xz \
    && mv linux-amd64/helm /usr/bin/helm \
    && chmod +x /usr/bin/helm \
    && helm version \
    && rm -rf linux-amd64 \
    && apk del wget \
    && rm -f /var/cache/apk/*

CMD [ "helm" ]
