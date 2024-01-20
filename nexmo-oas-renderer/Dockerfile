FROM ruby:3.0.6-slim

RUN apt-get update \
	&& apt-get install dumb-init make gcc git -y
RUN gem install nexmo-oas-renderer -v 2.7.2

EXPOSE 4567

COPY entry-point.sh /entry-point.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/sh", "-c", "/entry-point.sh"]