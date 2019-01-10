FROM golang:1.11.4-stretch

LABEL "com.github.actions.name"="Detect Unmergeable"
LABEL "com.github.actions.description"="Detect unmergeable pull requests"

ENV GO111MODULE on

WORKDIR /gh-action-detect-unmergeable/
ADD main.go main.go
ADD json.go json.go
ADD operation.go operation.go
ADD go.mod go.mod
ADD go.sum go.sum

RUN ["go", "build", "-o", "app"]

ENTRYPOINT ["/gh-action-detect-unmergeable/app"]