help: ## show help list
	@grep -E '^[a-zA-Z_\-\:]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ": .*?## "}; {gsub(/[\\]*/,""); printf "\033[36m%-30s\033[0m%s\n", $$1, $$2}'

# testsec: ## run first script
# 	@./scripts/bash_first.sh "$@arg"
Catalog: ## run first script
	@./scripts/make_catalog.sh
search: ## run second script
	@./scripts/make_search.sh $(argument)
show: ## run third script
	@./scripts/make_show.sh $(argument)
delete: ## run fors script
	@./scripts/make_delete.sh $(argument)
##$(arg1)