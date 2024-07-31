FROM python:3.10-slim-buster

LABEL maintainer="Ad.BadiDesign@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

COPY ./core/requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./core .
