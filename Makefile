.PHONY: clean tfdocs

help: 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

default: help


## make clean | Remove .terragrunt-cache
clean:
	@rm -f .directory
	@find . -type d -name ".terragrunt-cache" -prune -exec rm -rf {} \;
	@find ./ -name "terraform.tfstate" -prune -exec rm -rf {} \;
	@find ./ -name "terraform.lock.hcl" -prune -exec rm -rf {} \;

## make tfdocs | Run terraform-docs
tfdocs:
	@for dir in $$(find ./modules/apps -name "main.tf" -not -path "*/.terraform*" -exec dirname {} \;); do echo "$$dir"; docker run --rm --volume "$$(pwd):/terraform-docs" -u $$(id -u) quay.io/terraform-docs/terraform-docs:0.17.0 markdown /terraform-docs/$$dir > $$dir/README.md; done