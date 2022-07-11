FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get -y update



COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "lightning.py"]












