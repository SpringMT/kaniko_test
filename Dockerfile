FROM alpine

RUN apk add tree

RUN mkdir /app
RUN mkdir /app/api

WORKDIR /app
COPY api /app/api/
RUN tree /app
