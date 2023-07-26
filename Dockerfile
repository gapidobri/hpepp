FROM --platform=linux/amd64 alpine:3.18

RUN apk add gcompat libstdc++ libusb-compat

COPY ./hpepp-linux-1_06_069-amd64 .
COPY ./start.sh .

RUN ./hpepp-linux-1_06_069-amd64 -silent

VOLUME [ "/usr/local/HPE/PowerProtector" ]

EXPOSE 4679

CMD [ "./start.sh" ]