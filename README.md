## Download 

```
$ git clone --recursive https://github.com/0xe3b0c4/blockscout-devenv.git
```

## Port

* JSON-RPC: 8545
* Websocket: 8546
* faucet: 8080
* blockscout: 4000

## Startup

```shell
$ docker compose up -d
```

## Enter the container environment and build

```bash
$ docker compose exec blockscout /bin/bash
bash-5.1# /build.sh
```

