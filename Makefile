VERSION=2.0.2
IMAGE=yen3/pandoc

all:
	docker build --build-arg VERSION=$(VERSION) -t $(IMAGE):$(VERSION) .

push:
	docker tag $(IMAGE):$(VERSION) $(IMAGE):$(VERSION)
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
