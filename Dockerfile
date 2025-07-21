FROM python:3-alpine

ADD requirements.txt /root/requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apk add --no-cache cairo cairo-dev git && \
    pip install -r /root/requirements.txt && \
    rm /root/requirements.txt

ENV GIT_USERNAME   github
ENV GIT_USER_ID    100000
ENV MKDOCS_CONFIG  .github/mkdocs.yml

ENTRYPOINT [ "/entrypoint.sh" ]