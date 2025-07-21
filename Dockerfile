FROM python:3-alpine

ADD requirements.txt /root/requirements.txt

RUN apk add --no-cache git && \
    pip install -r /root/requirements.txt && \
    rm /root/requirements.txt