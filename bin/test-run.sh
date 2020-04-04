#!/bin/bash

docker run --rm -v ${PWD}:/workdir abaplint/abaplint:latest abaplint
