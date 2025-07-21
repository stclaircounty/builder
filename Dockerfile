FROM python:3-alpine

ADD requirements.txt /root/requirements.txt

RUN mkdir /workspace

RUN apk add --no-cache cairo cairo-dev git && \
    pip install -r /root/requirements.txt && \
    rm /root/requirements.txt

WORKDIR /workspace