FROM scratch

WORKDIR /app

COPY ./bin/dockerDesafioGo ./bin/dockerDesafioGo

ENTRYPOINT [ "./bin/dockerDesafioGo" ]