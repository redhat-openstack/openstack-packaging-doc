SRCS := $(wildcard doc/*.txt)
HTML := $(SRCS:doc/%.txt=html/%.html)
BUILDER := $(shell (which asciidoctor asciidoc || echo asciidoctor) 2> /dev/null | head -n1)

all: html

html: $(HTML) html/images html/stylesheets

html_dir:
	mkdir -p html

html/%.html: doc/%.txt | html_dir
	${BUILDER} -b html5 \
		-a linkcss -a stylesheet=rdo.css -a stylesdir=stylesheets \
		-a icons -a imagesdir=images -a iconsdir=images/icons \
		-o $@ $<

html/images:
	cp -r images html/

html/stylesheets:
	cp -r stylesheets html/

clean:
	rm -rf html

.PHONY: html
