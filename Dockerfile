# Use an official Golang runtime as a parent image
FROM golang:alpine

RUN apk add git --no-cache tzdata
ENV TZ=Europe/Amsterdam

# Set the working directory inside the container
RUN git clone https://github.com/simulot/immich-go.git

WORKDIR immich-go
RUN go build -o immich-go

# Define the command to run your application
ENTRYPOINT ["./immich-go"]