# dotnet-script Docker Image

[![Pulls from DockerHub](https://img.shields.io/docker/pulls/hjerpbakk/dotnet-script.svg)](https://hub.docker.com/r/hjerpbakk/dotnet-script/)

This is a [Docker image](https://hub.docker.com/r/hjerpbakk/dotnet-script/) containing the latest version of dotnet-script.


## Runing scripts

Example, shows the version of the dotnet script, 0.30.0 at the time of writing:

```shell
docker run --rm -it hjerpbakk/dotnet-script --version

0.30.0
```

Running the script `foo.csx` with one argument:

```shell
docker run --rm -it --volume="$PWD:/scripts:ro" hjerpbakk/dotnet-script foo.csx -- arg1
```

For further information, see [dotnet-script's own readme](https://github.com/filipw/dotnet-script/blob/master/README.md).

## Building the image locally

Standing in this folder, use the following command to build the image locally:

```shell
docker build -t hjerpbakk/dotnet-script:tag .
```

Where `:tag` is an optioanl version number, like `:0.30.0`.
