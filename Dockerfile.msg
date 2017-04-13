FROM alpine

MAINTAINER Pranay Kanwar <pranay.kanwar@gmail.com>

COPY msg.sh /msg.sh
ENTRYPOINT ["/msg.sh"]
