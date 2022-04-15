FROM golang:alpine

RUN apk add curl \
            bash \
            grep  # For PCRE

COPY ./check_mtu.bash /
RUN chmod +x /check_mtu.bash

ENTRYPOINT [ "/bin/bash/check_mtu.bash" ]
