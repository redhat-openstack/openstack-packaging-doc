# RDO packaging documentation

RDO is a community distribution of OpenStack which strives to provide the
latest upstream code packaged for Red Hat Enterprise Linux, CentOS and Fedora.

This repository attempts to be the definitive source of information about
RDO OpenStack packaging for developers and packagers.


## Editing

The documentation is written in `asciidoc` and you can edit individual
documents in  `doc` directory using your favorite text editor.

See the individual documents
(especially [RDO packaging guide](doc/rdo-packaging.txt))
for more instructions on contributing.


## Rendering

You need `asciidoctor` to render HTML pages.

    yum -y install rubygem-asciidoctor.noarch

Running

    make

will produce output in `html` directory

You can also use

    ./autobuild.sh

script to automatically rebuild docs on `doc/*.txt` changes.


## Adding new doc

At the time of writing, only [RDO packaging guide](doc/rdo-packaging.txt)
is included, but if you'd like to document anything else using nice asciidoc
text files, just:

 * add new `doc/*.txt` file
 * optionally link to it from `doc/index.txt`
