VERSION=2.0.2

all:
	docker build --build-arg VERSION=$(VERSION) -t yen3/pandoc .
	docker build --build-arg VERSION=$(VERSION) -t yen3/pandoc:$(VERSION) .
