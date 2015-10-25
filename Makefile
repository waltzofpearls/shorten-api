.PHONY: test clean build

build: shorten-go

run: build
	./shorten-go

test:
	go vet ./...
	go test ./...

clean:
	go clean ./...

shorten-go: *.go
	go build

