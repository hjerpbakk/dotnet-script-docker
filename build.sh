#!/usr/bin/env bash
set -e

docker build -t hjerpbakk/dotnet-script:1.3.1 .
docker build -t hjerpbakk/dotnet-script:latest .