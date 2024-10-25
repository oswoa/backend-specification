#!/bin/bash

if [ -d out ]; then
    rm -rf out
fi

mkdir out
/usr/local/protoc/bin/protoc -I=./src \
    --go_out=./out \
    --go_opt=paths=source_relative \
    --go-grpc_out=./out \
    --go-grpc_opt=paths=source_relative \
    ./src/*.proto
