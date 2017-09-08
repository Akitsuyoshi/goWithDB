FROM golang:1.8.3

# Copy the local package files to the container’s workspace.
WORKDIR /go/src/github.com/Akitsuyoshi/goWithDB/

ADD . /go/src/github.com/Akitsuyoshi/goWithDB/

# Install our dependencies
RUN go get github.com/gorilla/mux github.com/lib/pq

# Install api binary globally within container
RUN go install github.com/Akitsuyoshi/goWithDB/

# Compile the application
# RUN go build main.go

# Set binary as entrypoint
ENTRYPOINT /go/bin/goWithDB


# Expose default port (8080)
EXPOSE 8080
