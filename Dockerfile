FROM ubuntu


WORKDIR /app

RUN apt-get -y update



COPY requirements.txt requirements.txt

RUN apt-get install -r requirements.txt

COPY . .

CMD [ "python3", "lightning.py"]












