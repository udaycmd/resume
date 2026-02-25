FILENAME := resume
COMPILER := pdflatex
PACKAGES := titlesec tabularx xcolor enumitem fontawesome5 amsmath \
           eso-pic calc bookmark lastpage changepage paracol \
           ifthen needspace iftex charter symbol ms graphics \
           tools pdftex

.PHONY: all install build clean

all: build clean

install:
	tlmgr install $(PACKAGES)

build:
	$(COMPILER) $(FILENAME).tex

clean:
	$(RM) $(FILENAME).aux $(FILENAME).log $(FILENAME).out $(FILENAME).toc
