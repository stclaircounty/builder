FROM python:3-alpine

ADD requirements.txt /root/requirements.txt

RUN pip install -r /root/requirements.txt && rm /root/requirements.txt