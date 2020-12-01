#!/usr/bin/env bash
docker build -t hjerpbakk/dotnet-script-local:1.0.1 .

ARGUMENT="42"
RESULT=$(docker run --rm --volume="$PWD:/scripts:ro" hjerpbakk/dotnet-script-local:1.0.1 test.csx -- "$ARGUMENT")

if [ "$RESULT" = "$ARGUMENT" ]; then
   echo "dotnet-script ran successfully";
   exit;
fi

echo "dotnet-script failed. Expected:"
echo "$ARGUMENT"
echo "but got:"
echo "$RESULT"
exit 1;