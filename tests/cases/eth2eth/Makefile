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
	./scripts/create-clients # error case 1 (tranditional require)
	./scripts/create-connection
	./scripts/init-rly 1
	./scripts/create-clients
	./scripts/create-clients # error case 2 (tranditional revert)
	./scripts/create-connection
	./scripts/init-rly 2
	./scripts/create-clients
	./scripts/create-clients # error case 3 (known custom error)
	./scripts/create-connection
	./scripts/init-rly 3
	./scripts/create-clients
	./scripts/create-clients # error case 4 (arithmetic overflow)
	./scripts/create-connection
	./scripts/init-rly 4
	./scripts/create-clients
	./scripts/create-clients # error case 0 (unknown custom error)
	./scripts/create-connection
