FROM golang:1.22.4-alpine
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
WORKDIR /app/cmd/planner
RUN go build -o /planner/bin/planner .
EXPOSE 8080
ENTRYPOINT [ "/planner/bin/planner" ]