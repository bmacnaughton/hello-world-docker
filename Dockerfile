FROM alpine:3.10

COPY ./entrypoint.sh /entrypoint.sh
COPY ./build-and-test-bindings.sh /build-and-test-bindings.sh
RUN chmod +x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/build-and-test-bindings.sh"]
