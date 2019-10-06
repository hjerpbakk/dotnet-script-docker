#!/usr/bin/env bash
docker build -t hjerpbakk/dotnet-script-local:0.50.0 .

ARGUMENT="42"
RESULT=$(docker run --rm -it --volume="$PWD:/scripts:ro" hjerpbakk/dotnet-script-local:0.50.0 test.csx -- "$ARGUMENT" | tr -d '\r' | tr -d '[?1h=')

if [ "$RESULT" = "$ARGUMENT" ]; then
   echo "dotnet-script ran successfully";
   exit;
fi

echo "dotnet-script failed. Expected:"
echo "$ARGUMENT"
echo "but got:"
echo "$RESULT"
exit 1;