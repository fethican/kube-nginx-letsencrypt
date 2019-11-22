FROM fedora:latest
MAINTAINER Seth Jennings <sethdjennings@gmail.com>

RUN dnf install certbot -y && dnf clean all

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
