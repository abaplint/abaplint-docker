#!/bin/bash

if [ "$1" = "--dryrun" ]; then
    DRYRUN="yes"
    echo "Dry run ..."
fi

VERSION=`docker run abaplint/abaplint:latest abaplint -v | tail -n 1`
if [ -z $VERSION ]; then
    echo "Cannot identify abaplint version"
    exit 1
fi

echo "abaplint version:" $VERSION

VERSION_2S=${VERSION%.*}
VERSION_1S=${VERSION_2S%.*}

echo "additional tags: $VERSION_2S, $VERSION_1S, latest"

docker tag abaplint/abaplint abaplint/abaplint:$VERSION
docker tag abaplint/abaplint abaplint/abaplint:$VERSION_2S
docker tag abaplint/abaplint abaplint/abaplint:$VERSION_1S

if [ -z "$DRYRUN" ]; then
    docker push abaplint/abaplint:latest
    docker push abaplint/abaplint:$VERSION
    docker push abaplint/abaplint:$VERSION_2S
    docker push abaplint/abaplint:$VERSION_1S
fi

#cleanup
docker rmi abaplint/abaplint:$VERSION
docker rmi abaplint/abaplint:$VERSION_2S
docker rmi abaplint/abaplint:$VERSION_1S
