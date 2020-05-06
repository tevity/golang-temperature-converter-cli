FROM golang:1.13

ENV CGO_ENABLED 0

WORKDIR /src

RUN addgroup --system projects && adduser --system projects --ingroup projects

RUN chown -R projects:projects /src

USER projects

COPY . .

RUN go install -v ./...