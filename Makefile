DOCS=rdo-packaging.html

all: clean doc

doc: clean $(DOCS)

%.html: %.txt
	asciidoc -b html5 -a icons -a toc2 -a theme=flask $<

clean:
	rm -fv $(DOCS)
