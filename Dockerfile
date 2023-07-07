FROM golang:1.20.4-alpine3.18 as builder

WORKDIR /
COPY go.mod .
COPY go.sum .
ENV GOPROXY=https://goproxy.cn
RUN go mod download

COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o ./app main.go

FROM alpine:3.18

WORKDIR /
COPY --from=builder /app .
ENTRYPOINT ["/app"]
