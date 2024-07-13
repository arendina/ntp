# NTP
Chrony example configuration

## Instructions

There are two servers:

* ntpserver.localnet: 192.168.56.10
* ntpclient.localnet: 192.168.56.11

### Boot

To start them all
```
vagrant up
```

To start one by one
```
vagrant up ntpserver
vagrant up ntpclient
```

### Tests

To connect:
```
vagrant ssh <hostname>
```

Check with Chronyd:

```
chronyc sources
```

Check with netstat:

```
netstat -tunap
```
