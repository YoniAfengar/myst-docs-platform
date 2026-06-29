FROM python:3.12-slim

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    rm -rf /var/lib/apt/lists/*

RUN pip install mystmd