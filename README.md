# dotnet-script Docker Image

This is a Docker image containing the latest version of dotnet-script:

[hjerpbakk/dotnet-script](https://hub.docker.com/r/hjerpbakk/dotnet-script/)

## Runing scripts

Example, shows the version of the dotnet script, 0.29.1 at the time of writing:

```shell
docker run --rm -it hjerpbakk/dotnet-script --version

0.29.1
```

Running the script `foo.csx` with one argument:

```shell
docker run --rm -it hjerpbakk/dotnet-script foo.csx -- arg1
```

For further information, see [dotnet-script's own readme](https://github.com/filipw/dotnet-script/blob/master/README.md).

## Building the image locally

Standing in this folder, use the following command to build the image locally:

```shell
docker build -t hjerpbakk/dotnet-script:tag .
```

Where `:tag` is an optioanl version number, like `:0.29.1`.
