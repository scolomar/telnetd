FROM alpine

ARG ADDR=LOCALHOST
ARG LOGIN=/bin/login
ARG PORT=23
ARG USER=user

RUN apk update && apk upgrade && apk add busybox-extras
RUN adduser -D $USER && echo -e "\n\n" | passwd $USER

EXPOSE $PORT

CMD /usr/sbin/telnetd -F -p $PORT -b $ADDR -l $LOGIN
