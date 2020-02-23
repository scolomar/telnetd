FROM alpine
RUN apk update && apk upgrade && apk add busybox-extras
RUN adduser -D user && echo -e "\n\n" | passwd user
EXPOSE 23
CMD ["/usr/sbin/telnetd","-F"]
