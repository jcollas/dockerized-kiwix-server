# dockerized-kiwix-server

## Recent changes

I incorporated some refactors from https://github.com/assarbad/containerized-kiwix-server. Check out this version if you want to use podman and other nice features of this approach (e.g. using `make` for some build steps).

## Step 1: Download some ZIM files

[FTP site with ZIM files](https://ftp.fau.de/kiwix/zim/)

## Step 2: Move the ZIM files to the 'zim' directory

```shell
# inside the folder where you downloaded the ZIMs (e.g. ~/Downloads)
$ mkdir -p ./dockerized-kiwix-server/zims
$ cp *.zim ./dockerized-kiwix-server/zims
```

## Step 3: Build the Docker container

This will create the Linux machine, download the latest version of Kiwix tools (including `kiwix-serve`), copy the ZIM files over, then create the Kiwix library XML file.

```shell
$ pwd # -> ./dockerized-kiwix-server
$ docker build -t kiwix-serve .
```

## Step 4: Run the container

This starts the container and the Kiwix server, and makes it available on your machine at `http://localhost:8080`.

```shell
$ docker run -d --name kiwix-serve -v $(pwd)/zims:/zims:ro -p 8080:8080 kiwix-serve
```

To turn it off:

```shell
$ docker stop $(docker ps -qf "name=kiwix-serve")
```

To start it again:

```shell
$ docker start kiwix-serve
```

## Step 5: Try it out in the browser

Go to http://localhost:8080.
