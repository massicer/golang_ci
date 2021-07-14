FROM golangci/golangci-lint:v1.37.1-alpine AS lint-base 

FROM golang:1.16.0-alpine

ENV GO111MODULE=on
ARG GOPLVERSION=v0.6.9

COPY --from=lint-base /usr/bin/golangci-lint /usr/bin/golangci-lint
COPY ./shared ./shared

RUN apk add --no-cache git &&\
    apk add --no-cache bash &&\
    apk add docker && \
    apk add build-base

RUN go get golang.org/x/tools/gopls@${GOPLVERSION}
RUN go get -v github.com/go-delve/delve/cmd/dlv

ENTRYPOINT ["/bin/bash"]