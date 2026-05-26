IMAGE_NAME=express-hello-world
PORT=3001

.PHONY: build run compose-up compose-down clean

build:
	podman build -t $(IMAGE_NAME) .

run:
	podman run -p $(PORT):$(PORT) --env PORT=$(PORT) $(IMAGE_NAME)

compose-up:
	podman compose up -d

compose-down:
	podman compose down

clean:
	podman rmi $(IMAGE_NAME)
