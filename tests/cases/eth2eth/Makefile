include ../../docker.mk

.PHONY: network
network:
	TAG=${DOCKER_TAG} $(DOCKER_COMPOSE) \
		-f ../docker-compose-test.yaml \
		up -d \
		ethereum-geth0 ethereum-geth1

.PHONY: test
test:
	./scripts/init-rly
	./scripts/handshake
	./scripts/test-tx

.PHONY: network-down
network-down:
	TAG=${DOCKER_TAG} $(DOCKER_COMPOSE) \
		-f ../docker-compose-test.yaml \
		down --volume --remove-orphans

.PHONY: custom-error-test
custom-error-test:
	./scripts/init-rly
	./scripts/create-clients
	./scripts/create-clients # error case 1
	./scripts/create-connection
	./scripts/init-rly 1
	./scripts/create-clients
	./scripts/create-clients # error case 2
	./scripts/create-connection
	./scripts/init-rly 2
	./scripts/create-clients
	./scripts/create-clients # error case 3
	./scripts/create-connection
	./scripts/init-rly 3
	./scripts/create-clients
	./scripts/create-clients # error case 0
	./scripts/create-connection
