FROM golang:1.14.2
WORKDIR /go/src/github.com/macro/
# RUN go get -d -v golang.org/x/net/html
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .