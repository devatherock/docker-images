FROM nexmodev/nexmo-oas-renderer:v2.4.1

RUN apt update && apt install dumb-init

COPY entry-point.sh /entry-point.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/sh", "-c", "/entry-point.sh"]