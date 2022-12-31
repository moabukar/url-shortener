FROM golang:1.19


LABEL org.opencontainers.image.source=https://github.com/moabukar/url-shortener
LABEL org.opencontainers.image.description="A URL shortener written in Golang"

USER 0:0
EXPOSE 3000

ADD . /src
WORKDIR /src
# RUN make go/build
RUN go build /src/main.go

CMD ["./main"]