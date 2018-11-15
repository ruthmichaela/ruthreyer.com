# RECIPE:
# output/file: input/file

# $< = FIRST INPUT
# $^ = ALL INPUTS
# $@ = OUTPUT
# $(@D) = DIRECTORY OF THE OUTPUT

.PHONY: all
all: build/main.css build/index.html build/img/sacred.png build/img/bfly.png build/img/eye.png build/img/dev.svg build/img/dribbble.svg build/img/twitter.svg build/img/unsplash.svg build/img/github.svg

build/main.css: src/stylesheets/main.scss
	mkdir -p $(@D)
	sassc $^ $@

build/index.html: src/index.html
	mkdir -p $(@D)
	cp $< $@

build/img/sacred.png: src/img/sacred.png
	mkdir -p $(@D)
	cp $^ $@

build/img/bfly.png: src/img/bfly.png
	mkdir -p $(@D)
	cp $^ $@

build/img/eye.png: src/img/eye.png
	mkdir -p $(@D)
	cp $^ $@

build/img/dev.svg: src/img/dev.svg
	mkdir -p $(@D)
	cp $^ $@

build/img/dribbble.svg: src/img/dribbble.svg
	mkdir -p $(@D)
	cp $^ $@

build/img/twitter.svg: src/img/twitter.svg
	mkdir -p $(@D)
	cp $^ $@

build/img/unsplash.svg: src/img/unsplash.svg
	mkdir -p $(@D)
	cp $^ $@

build/img/github.svg: src/img/github.svg
	mkdir -p $(@D)
	cp $^ $@


