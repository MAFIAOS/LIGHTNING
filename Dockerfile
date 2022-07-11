FROM ubuntu


WORKDIR /app

RUN apt-get -y update
RUN apt install sudo

RUN sudo apt install python3.10

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "lightning.py"]












