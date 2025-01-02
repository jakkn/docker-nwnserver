> [!WARNING]  
> This image is built for NWN v1.69. It is old, bloated, and unsupported.
> For NWN:EE images please refer to
> - NWN: https://github.com/urothis/nwserver/pkgs/container/nwserver
> - NWNX: https://github.com/nwnxee/unified/pkgs/container/unified

# docker-nwnserver

Containerization of Neverwinter Nights server on Linux.

There is no NWNX here, just a simple vanilla NWN server.

## Run
Navigate to either slim or full and run
```
docker-compose up -d
```

#### Note
Options to nwserver can be given in `docker-compose.yml`.

## Dependencies
- [Docker](https://docs.docker.com/engine/installation/)
- [Compose](https://docs.docker.com/compose/install/)
