# RECIPE:
# output/file: input/file

# $< = FIRST INPUT
# $^ = ALL INPUTS
# $@ = OUTPUT
# $(@D) = DIRECTORY OF THE OUTPUT

.PHONY: all
all: build/main.css build/index.html build/favicon.ico build/img build/fonts

build/main.css: src/stylesheets/main.scss
	mkdir -p $(@D)
	sassc $^ $@

build/index.html: src/index.html
	mkdir -p $(@D)
	cp $< $@

build/favicon.ico: src/favicon.ico
	mkdir -p $(@D)
	cp $< $@

build/img: $(shell find src/img -type f)
	mkdir -p $@
	cp -rf src/img build

build/fonts: $(shell find src/fonts -type f)
	mkdir -p $@
	cp -rf src/fonts build

.PHONY: deploy
deploy: all
	scp -r build/* rreyer_ruthreyer@ssh.phx.nearlyfreespeech.net:/home/public