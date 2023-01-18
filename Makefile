CANISTER	:= playground
MAKE        := $(MAKE) --jobs --silent --no-print-directory
RM          := rm -rf

all: build

build:
	dfx canister create $(CANISTER)
	dfx build

install: build
	dfx canister install $(CANISTER)

reinstall: build
	dfx canister install $(CANISTER) --mode=reinstall --yes

upgrade: build
	dfx canister install $(CANISTER) --mode=upgrade --yes

run-%:
	cp src/$*.mo tmp/main.mo
	$(MAKE) upgrade
	dfx canister call $(CANISTER) main

clean:
	$(RM) .dfx

.PHONY: build install reinstall upgrade test clean
