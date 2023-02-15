FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install python3-pip -y
RUN pip3 install flask

COPY simple-web-app.py /opt/
ENTRYPOINT FLASK_APP=/opt/simple-web-app.py flask run --host=192.168.56.1 --port=7575
