FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

RUN apt-get install -y pkg-config
RUN pip install --upgrade pip

RUN pip install --upgrade setuptools
RUN pip install -y upgrade wheel 

RUN pip install ez_setup

RUN pip install cython

RUN pip3 install numpy
RUN apt-get install -y libpq-dev python-dev 

RUN pip install psycopg2-binary

RUN pip3 install lxml

RUN apt-get install libxml2

RUN apt-get  -y install libxslt1-dev
RUN pip install opencv-contrib-python-headless
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m","userbot"
