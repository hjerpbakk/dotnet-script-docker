FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine

RUN dotnet tool install -g dotnet-script

ENV PATH="${PATH}:/root/.dotnet/tools"

WORKDIR /scripts

ENTRYPOINT ["dotnet-script"]