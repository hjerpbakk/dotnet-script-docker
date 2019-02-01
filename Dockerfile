FROM microsoft/dotnet:2.2-sdk as builder

RUN dotnet tool install -g dotnet-script

ENTRYPOINT ["dotnet-script"]