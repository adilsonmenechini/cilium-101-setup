.PHONY: clean init plan apply destroy all 

help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

default: help

DIRECTORY ?= $(shell find ./ -name "terragrunt.hcl" -not -path "*/.terragrunt-cache/*" -exec dirname {} \;)

## make init | Run terragrunt init
init:
	@echo "Available directories:"
	@for dir in $(DIRECTORY); do echo "- $$dir"; done
	@read -p "Enter the number of the directory you want to choose (1-$(words $(DIRECTORY))): " choice; \
	echo "$$(echo $(DIRECTORY) | cut -d ' ' -f $${choice})" > .directory
	terragrunt init -upgrade --terragrunt-working-dir=$(shell cat .directory)
## make plan | Run terragrunt plan
plan:
	terragrunt plan --terragrunt-working-dir=$(shell cat .directory)

## make apply | Run terragrunt apply
apply:
	terragrunt apply --terragrunt-working-dir=$(shell cat .directory)
## make destroy | Run terragrunt destroy
destroy:
	terragrunt destroy --terragrunt-working-dir=$(shell cat .directory)

## make all | Run terragrunt init, plan, apply
all: init plan apply

## make clean | Remove .terragrunt-cache
clean:
	@rm -f .directory
	@find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;