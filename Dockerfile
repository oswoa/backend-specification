FROM golang:latest

RUN apt-get update
RUN apt-get -y install wget
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v28.3/protoc-28.3-linux-x86_64.zip

RUN apt-get -y install unzip
RUN unzip protoc-28.3-linux-x86_64.zip -d /usr/local/protoc

RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

WORKDIR /app
ENTRYPOINT [ "./build.sh" ]