
BUNDLE_EXEC=bundle exec
JEKYLL=$(BUNDLE_EXEC) jekyll
JEKYLL_ARGS=-d ../docs


.PHONY: install_gems \
	install_ruby \
	install_rbenv \
	build \
	serve \
	dev


build:
	cd src; $(JEKYLL) build $(JEKYLL_ARGS)

serve:
	cd src; $(JEKYLL) serve $(JEKYLL_ARGS)

# For local development
dev:
	cd src; $(JEKYLL) serve $(JEKYLL_ARGS) -w -l


install_gems:
	bundle install

install_ruby:
	rbenv install 3.2.2
	rbenv local 3.2.2

install_rbenv:
	xcode-select --install || true
	sudo port install rbenv
	sudo port install ruby-build
	rbenv init
