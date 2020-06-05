FROM golang:1.13
WORKDIR /go/src
RUN mkdir -p backend
WORKDIR /go/src/backend
COPY ./backend .
RUN go get -u github.com/gin-gonic/gin
# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-w" -a -o /main .
CMD go run  *.go