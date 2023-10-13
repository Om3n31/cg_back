FROM tensorflow/tensorflow:latest AS base

RUN mkdir app
WORKDIR /app

RUN pip install matplotlib panda

RUN apt-get update
RUN apt-get install libcairo2-dev -y

ENV PYTHONPATH=/app/:$PYTHONPATH

COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./start.sh .
EXPOSE 8000

ENTRYPOINT [ "/bin/bash" ]
