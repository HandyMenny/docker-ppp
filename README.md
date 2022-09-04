# ppp client Docker image

`pppd` client in a Docker image

## Usage

You need to either use `macvlan` or `host` network drivers in order to use this image.

Assuming that your peer configuration is named `dsl-provider`, you can run the image as follows:
```
docker run --network pppd --privileged -d --device=/dev/ppp -v /path/to/ppp:/etc/ppp --env PPPD_ARGS="call dsl-providers" ppp
```

`pppd` binary is invoked with the `nodetach` option.
