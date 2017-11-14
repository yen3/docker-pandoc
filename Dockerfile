FROM alpine:3.6

RUN apk add  --no-cache --virtual .build-deps ca-certificates wget \
    && wget https://github.com/jgm/pandoc/releases/download/2.0.2/pandoc-2.0.2-linux.tar.gz \
    && tar xf pandoc-2.0.2-linux.tar.gz \
    && cp pandoc-2.0.2/bin/* /usr/bin/ \
    && rm pandoc-2.0.2-linux.tar.gz \
    && rm -rf pandoc-2.0.2 \
    && apk del .build-deps

WORKDIR "/data"

CMD ["-h"]

ENTRYPOINT ["/usr/bin/pandoc"]
