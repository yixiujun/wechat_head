FROM golang:latest

MAINTAINER Allen.Cai "caizz520@gmail.com"

WORKDIR $GOPATH/src/github.com/yixiujun/wechat_head
ADD . $GOPATH/src/github.com/yixiujun/wechat_head
RUN go build ./cmd/main.go

EXPOSE 8998

ENTRYPOINT ["./main"]
