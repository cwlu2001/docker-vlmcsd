FROM alpine:3.20 AS builder
ADD https://github.com/Wind4/vlmcsd.git /build
WORKDIR /build
RUN apk add make build-base clang
ENV CC="clang"
ENV CFLAGS="-static"
RUN make vlmcsd

FROM scratch
COPY --from=builder /build/bin/vlmcsd /vlmcsd
USER 9999:9999
EXPOSE 1688/tcp
ENTRYPOINT [ "/vlmcsd", "-L", "0.0.0.0", "-D", "-d", "-e" ]
