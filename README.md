# telnetd

It will install and configure telnet server.
It will create a user "user" without a password.

To use this image you can run for example these commands:

```bash
docker network create telnet-network
docker container run --network telnet-network --name telnet-server --detach --restart unless-stopped secobau/telnetd:alpine
docker container run --network telnet-network --name telnet-client --rm --interactive --tty secobau/telnetd:alpine telnet telnet-server
```
