# RavenDB in Docker container

This container spins up RavenDB single node server instance.

* RavenDB : [official site](https://ravendb.net/)
* Docker: [official site](https://www.docker.com/)

# Requirements

Windows 2016 TP3 (tested on TP5) with installed [Windows containers](https://msdn.microsoft.com/virtualization/windowscontainers/containers_welcome).
To install Windows Containers on your machine follow this [guide](https://msdn.microsoft.com/pl-pl/virtualization/windowscontainers/quick_start/quick_start_windows_server).

## Usage

Run server on port `8080` in `debug` mode and interactive console.

```
docker run -it -p 8080:8080 pizycki/ravendb
```

---
## Build

Build image with this command

```
docker build --no-cache -t pizycki/ravendb:latest .
```