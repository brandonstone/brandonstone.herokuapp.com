FROM golang:latest

WORKDIR /go/src/github.com/brandonstone/brandonstone.herokuapp.com
COPY . .

RUN go get -u github.com/gorilla/mux
RUN go build stone.go

CMD ["./stone"]

