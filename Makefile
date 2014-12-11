SRCS := $(wildcard doc/*.txt)
HTML := $(SRCS:doc/%.txt=html/%.html)

all: html

html: $(HTML)

html_dir:
	mkdir -p html

html/%.html: doc/%.txt | html_dir
	asciidoctor -b html5 -a linkcss -a stylesheet=rdo.css -a stylesdir=../stylesheets -a icons -a imagesdir=../images -a iconsdir=../images/icons -o $@ $<

clean:
	rm -rf html

.PHONY: html
