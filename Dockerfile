FROM alpine:latest

EXPOSE 9091

VOLUME ["/etc/transmission"]

RUN apk update && apk add transmission-daemon py2-pip

RUN pip install BeautifulSoup==3.2.1 && pip install periscope==0.2.4

CMD [ "/usr/bin/transmission-daemon", "-g", "/etc/transmission", "-f" ]
