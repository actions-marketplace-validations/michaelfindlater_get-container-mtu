FROM golang:alpine

RUN apk add bash \
            grep  # For PCRE

COPY ./get_mtu.bash /get_mtu.bash
RUN chmod +x /get_mtu.bash

ENTRYPOINT [ "/get_mtu.bash" ]
