# telnetd

It will install and configure telnet server.
It will create a user "user" without a password.

To use this image you can run for example these commands:

```bash
docker container run --detach --restart unless-stopped --publish-all --name telnet-server secobau/telnetd:alpine-1.1
telnet localhost $( docker container port telnet-server | cut --delimiter : --field 2 )
```
