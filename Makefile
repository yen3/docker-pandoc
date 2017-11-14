VERSION=2.0.2
all:
	docker build -t yen3/pandoc .
	docker build -t yen3/pandoc:$(VERSION) .
