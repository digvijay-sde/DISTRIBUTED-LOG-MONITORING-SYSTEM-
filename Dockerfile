FROM golang:1.19-alpine
WORKDIR /app
COPY . .
RUN go mod tidy && go build -o app
CMD ["./app"]
EXPOSE 8080 50051
