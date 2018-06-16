FROM python:3.6.5-stretch
LABEL maintainer "Herbert Rusznak - https://github.com/thelittlebug"

ENV GOPATH=/root/go
RUN apt-get update && apt-get install -y --no-install-recommends golang	&& rm -rf /var/lib/apt/lists/* && go get github.com/cespare/reflex
RUN pip3 install flask

ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 80
COPY files/entrypoint.sh /
COPY files/app /app
WORKDIR /app
