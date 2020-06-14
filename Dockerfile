FROM alpine:3.8

# Install required packages
RUN apk add --no-cache \
        boost-system \
        boost-thread \
        ca-certificates \
        dumb-init \
        libressl \
        bash \
        curl \
        sudo \
        unzip

# Rclone
RUN curl https://rclone.org/install.sh | sudo bash

COPY start.sh /
COPY rclone.conf /
Copy cleanremotes.sh /

CMD bash start.sh