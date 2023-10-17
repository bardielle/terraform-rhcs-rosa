# Define a variable for the Terraform examples directory
TERRAFORM_DIR := examples/rosa-classic-with-unmanaged-oidc

.PHONY: build
build:
	go build

verify:
	@cd $(TERRAFORM_DIR) && terraform validate

tests:
	sh tests.sh

.PHONY: tools
tools:
	go install github.com/terraform-docs/terraform-docs@v0.16.0

.PHONY: generate
generate:
	@./generate/generate.sh
