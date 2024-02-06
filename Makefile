.PHONY: all
all: deploy

.PHONY: deploy
.SILENT: deploy
deploy:
	dfx deploy bitcoin_Dapp_backend --argument '(variant { regtest })'

.PHONY: clean
.SILENT: clean
clean:
	rm -rf .dfx
	cargo clean
