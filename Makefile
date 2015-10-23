SRCS := $(wildcard doc/*.txt)
HTML := $(SRCS:doc/%.txt=html/%.html)

all: html

html: $(HTML) html/images html/stylesheets/rdo.css

html_dir:
	mkdir -p html

html/%.html: doc/%.txt | html_dir
	asciidoctor -b html5 \
		-a linkcss -a stylesheet=rdo.css -a stylesdir=stylesheets \
		-a icons -a imagesdir=images -a iconsdir=images/icons \
		-o $@ $<

html/images:
	cp -r images html/

html/stylesheets/%.css:
	cp -r stylesheets/$(@F) $@

clean:
	rm -rf html

.PHONY: html
