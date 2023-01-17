all: build

CANISTER	:= playground
MAKE        := $(MAKE) --jobs --silent --no-print-directory
RM          := rm -rf

build:
	dfx canister create $(CANISTER)
	dfx build

install: build
	dfx canister install $(CANISTER)

reinstall: clean build
	dfx canister install $(CANISTER) --mode=reinstall --yes

upgrade: build
	dfx canister install $(CANISTER) --mode=upgrade --yes

test-%:
	@rm -f dfx.json
	@echo '{' >> dfx.json
	@echo '  "canisters": {' >> dfx.json
	@echo '    "'$(CANISTER)'": {' >> dfx.json
	@echo '      "main": "src/'$*'.mo"' >> dfx.json
	@echo '    }' >> dfx.json
	@echo '  }' >> dfx.json
	@echo '}' >> dfx.json
	$(MAKE) upgrade
	@dfx canister call $(CANISTER) $*

clean:
	$(RM) .dfx

.PHONY: build install reinstall upgrade test clean
