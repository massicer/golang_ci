FROM golangci/golangci-lint:v1.37.1-alpine AS lint-base 

FROM golang:1.16.0-alpine

ENV GO111MODULE=on

COPY --from=lint-base /usr/bin/golangci-lint /usr/bin/golangci-lint

RUN apk add --no-cache git &&\
    apk add --no-cache bash &&\
    apk add docker && \
    apk add build-base

ENTRYPOINT ["/bin/bash"]