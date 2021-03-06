# FROM ubuntu:latest
FROM python:3.6-slim

LABEL maintainer="Sebastian Zajac <sebastian.zajac@algomine.pl>"
LABEL description="Simpy Flask App"

# RUN apt-get update 
#&& yes | apt-get upgrade

# RUN apt-get install -y python3 python3-pip git 

COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["app.py"]
