FROM mhart/alpine-node:12

RUN apk update && apk add \
  g++ \
  python \
  make \
  git \
  curl \
  nano

COPY ./build-and-test-bindings.sh /root/build-and-test-bindings.sh
RUN chmod +x /root/build-and-test-bindings.sh

ENTRYPOINT ["/build-and-test-bindings.sh"]



