FROM golang AS builder

WORKDIR /app

COPY ./src/fullstack.go .

RUN go mod init github.com/raphaelkirschner/dockerDesafioGo && \
    go build -o fullstackrocks

FROM scratch

WORKDIR /app

COPY --from=builder /app/fullstackrocks ./bin/fullstackrocks

ENTRYPOINT [ "./bin/fullstackrocks" ]