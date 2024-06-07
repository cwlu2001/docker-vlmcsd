FROM alpine:3.20 as builder
ADD https://github.com/Wind4/vlmcsd.git /build
WORKDIR /build
RUN apk add make build-base clang
ENV CC="clang"
ENV CFLAGS="-static"
RUN make vlmcsd

FROM scratch
COPY --from=builder --chmod=555 /build/bin/vlmcsd /vlmcsd
USER 9999:9999
EXPOSE 1688/tcp
ENTRYPOINT [ "/vlmcsd" ]
CMD [ "-L", "0.0.0.0", "-D", "-d", "-e" ]
