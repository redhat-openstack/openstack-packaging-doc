DOCS=rdo-packaging.html

all: doc

doc: $(DOCS)

%.html: %.txt
	asciidoc -b html5 -a icons -a toc2 -a theme=flask $<
