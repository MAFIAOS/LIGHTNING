FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

RUN pip install --upgrade pip

RUN pip install --upgrade setuptools

RUN pip install ez_setup



RUN pip install git+https://github.com/lxml/lxml

RUN pip3 install cython git+https://github.com/lxml/lxml

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m","userbot"
