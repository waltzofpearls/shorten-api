.PHONY: test clean build

build: shorten-api-go

run: build
	./shorten-api-go

test:
	go vet ./...
	go test ./...

clean:
	go clean ./...
	rm -f shorten-api-go

config.json:
	cp -f config.json-dist config.json

shorten-api-go: *.go
	go get ./...
	go build

