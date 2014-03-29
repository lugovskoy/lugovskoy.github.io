REMOTE=berk@bugsofberk.net:/usr/local/www/main/

all: build

build:
	jekyll build

serve:
	jekyll serve

push:
	rsync -ahz _site/* $(REMOTE)
	git add -A
	git commit -m 'Blog update'

clean:
	rm -rf _site/*

# vim: noet
