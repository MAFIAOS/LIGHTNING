FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

RUN sudo apt-get install libxml2-dev libxslt1-dev python-dev 

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m","userbot"
