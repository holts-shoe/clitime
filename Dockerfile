FROM golang:1.20

WORKDIR /app

COPY go.mod go.sum ./ 

RUN go mod download

COPY . .

RUN go build -o go-time ./cmd/go_time/ 

CMD ["./go-time"]