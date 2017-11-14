FROM alpine:latest

ARG VERSION=2.0.2

RUN apk add  --no-cache --virtual .build-deps ca-certificates wget \
    && wget https://github.com/jgm/pandoc/releases/download/${VERSION}/pandoc-${VERSION}-linux.tar.gz \
    && tar xf pandoc-${VERSION}-linux.tar.gz \
    && cp pandoc-${VERSION}/bin/* /usr/bin/ \
    && rm pandoc-${VERSION}-linux.tar.gz \
    && rm -rf pandoc-${VERSION} \
    && apk del .build-deps

WORKDIR "/data"

CMD ["-h"]

ENTRYPOINT ["/usr/bin/pandoc"]
