SRCS := $(wildcard doc/*.txt)
HTML := $(SRCS:doc/%.txt=html/%.html)

all: html

html: $(HTML)

html_dir:
	mkdir -p html

html/%.html: doc/%.txt | html_dir
	asciidoc -b html5 -a theme=flask -o $@ $<

clean:
	rm -rf html

.PHONY: html
