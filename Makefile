build:
	go build ./... -o bin/plus2plus

run: build
	./bin/plus2plus

runfollower: build
	./bin/plus2plus --listenaddr :4000 --leaderaddr :3000

test: 
	@go test -v ./...