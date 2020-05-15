
help:
	@echo "make {build|test|deploy|new-post}"
	@echo "make new-post POST=test"
	
build:
	@hugo -t terminal

test:
	@hugo server -t terminal

deploy: build
	./scripts/deploy-gh.sh
	./scripts/deploy-sftp.sh

new-post:
	hugo new posts/$(POST).md
	code .

grab-theme:
	git clone https://github.com/panr/hugo-theme-terminal.git themes/terminal