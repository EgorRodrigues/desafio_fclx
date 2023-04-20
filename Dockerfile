FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN go build -o app

FROM scratch

COPY --from=0 /app/app .

# CMD ["tail", "-f", "/dev/null"]
CMD ["./app"]