FROM alpine

RUN apk add tree

RUN mkdir /app
RUN mkdir /app/api

WORKDIR /app
COPY shared /app/shared/
COPY api/shared /app/api/shared/
COPY . /app

WORKDIR /app/api

RUN tree /app
RUN cat /app/api/shared/shared.txt
