IMAGE_NAME = massicer/golang_ci

.PHONY: build
build:
	docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .

.PHONY: push
push: build
	docker push ${IMAGE_NAME}
