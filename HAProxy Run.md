## Docker run command

```
cd HAProxy
docker build -t gsengun/simple-ha-proxy:1.0 .

cd anywhere
docker run --name haproxy -p 7000:55000 --restart unless-stopped gsengun/simple-ha-proxy:1.0
```

## Only test the configuration

```
docker run -it --rm --name haproxy-syntax-check -v `pwd`/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro haproxy:1.6.5-alpine haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg
```