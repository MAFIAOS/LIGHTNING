FROM ubuntu


WORKDIR /app

RUN apt-get -y update
RUN apt install sudo

RUN apt-get -y install python3

RUN apt-get install python3-pip
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "lightning.py"]












