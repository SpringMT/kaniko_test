FROM alpine

RUN apk add tree

RUN mkdir /app
RUN mkdir /app/api

WORKDIR /app
COPY api /app/api/
RUN tree /app
COPY shared /app/shared/
RUN tree /app
COPY api/shared /app/api/
RUN tree /app
COPY api/shared /app/api/shared/
RUN tree /app
COPY . /app

WORKDIR /app/api

RUN tree /app
RUN cat /app/shared/shared.txt
