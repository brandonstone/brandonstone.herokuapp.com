FROM golang:latest

WORKDIR /go/src/github.com/brandonstone/brandonstone.herokuapp.com
COPY . .

RUN go get -u github.com/gorilla/mux
RUN go get -u github.com/gin-gonic/gin
RUN go get github.com/gin-contrib/static
RUN go build main.go

EXPOSE 80

CMD ["./main"]
 