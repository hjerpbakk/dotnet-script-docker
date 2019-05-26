FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine

RUN dotnet tool install -g dotnet-script

ENV PATH="${PATH}:/root/.dotnet/tools"

WORKDIR /scripts

ENTRYPOINT ["dotnet-script"]