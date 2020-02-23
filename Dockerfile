FROM alpine
RUN apk update && apk upgrade && apk add busybox-extras
RUN echo "telnet stream tcp nowait root /usr/sbin/telnetd telnetd -i -l /bin/login" 1> /etc/inetd.conf
RUN adduser -D user && echo -e "\n\n" | passwd user
CMD ["/usr/sbin/inetd","-f"]
