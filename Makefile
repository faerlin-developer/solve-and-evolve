serve:
	mkdocs serve

deploy:
	mkdocs gh-deploy --force
	rm -rf site

update-submodule:
	git submodule update --remote
