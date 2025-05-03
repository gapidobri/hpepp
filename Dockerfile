FROM alpine:3.18

RUN apk add gcompat libstdc++ libusb-compat

COPY ./hpepp-linux-2_06_098-amd64 ./start.sh .

RUN ./hpepp-linux-2_06_098-amd64 -silent

VOLUME [ "/usr/local/HPE/PowerProtector" ]

EXPOSE 4679
EXPOSE 4680

CMD [ "./start.sh" ]
