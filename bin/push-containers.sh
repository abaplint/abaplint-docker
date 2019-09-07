#!/bin/bash

VERSION=`docker run abaplint/abaplint:latest abaplint -v | tail -n 1`
if [ -z $VERSION ]; then
    echo "Cannot identify abaplint version"
    exit 1
fi

echo "abaplint version:" $VERSION

docker tag abaplint/abaplint abaplint/abaplint:$VERSION
docker push abaplint/abaplint:latest
docker push abaplint/abaplint:$VERSION
