FROM alpine:latest

EXPOSE 9091

VOLUME ["/etc/transmission"]

RUN apk update && apk add transmission-daemon py2-pip

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt

CMD [ "/usr/bin/transmission-daemon", "-g", "/etc/transmission", "-f" ]
