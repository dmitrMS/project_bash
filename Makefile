.PHONY: catalog
catalog: # show all files in directory tree
	@./scripts/show_catalog_files.sh

search: # find given text in directory tree
	@./scripts/search_file.sh $(str)

show: # show file information
	@./scripts/show_information.sh $(file)

delete: # delete file or directory or directory
	@./scripts/delete.sh $(file)

help: ## show help list
	@grep -E '^[a-zA-Z_\-\:]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ": .*?## "}; {gsub(/[\\]*/,""); printf "\033[36m%-30s\033[0m%s\n", $$1, $$2}'