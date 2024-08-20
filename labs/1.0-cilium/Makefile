.PHONY: clean init plan apply destroy all 

help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

default: help

DIRECTORY ?= $(shell find ./ -name "terragrunt.hcl" -not -path "*/.terragrunt-cache/*" -exec dirname {} \;)

selector:
	@echo "Available directories:"
	@i=1;for dir in $(DIRECTORY); do echo "$$i) $$dir"; i=$$((i + 1)); done
	@read -p "Enter the number of the directory you want to choose (1-$(words $(DIRECTORY))): " choice; \
	echo "$$(echo $(DIRECTORY) | cut -d ' ' -f $${choice})" > .directory
	@echo "\n\n\n Selected directory: $$(cat .directory)\n\n"

## make init | Run terragrunt init
init: selector
	terragrunt init -upgrade --terragrunt-working-dir=$(shell cat .directory)
## make plan | Run terragrunt plan
plan:
	terragrunt plan --terragrunt-working-dir=$(shell cat .directory)

## make apply | Run terragrunt apply
apply:
	terragrunt apply --terragrunt-working-dir=$(shell cat .directory)
## make destroy | Run terragrunt destroy
destroy: selector
	terragrunt destroy --terragrunt-working-dir=$(shell cat .directory)

## make all | Run terragrunt init, plan, apply
all: init plan apply

## make clean | Remove .terragrunt-cache
clean:
	@rm -f .directory
	@find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;