LATEX=pdflatex
all:
	$(MAKE) build
	$(MAKE) remove_tempfiles

build:
	$(LATEX) document
	$(LATEX) document
	mv document.pdf TuKII_Team5_Documentation.pdf

remove_tempfiles:
	$(RM) texput.log document.out document.toc document.ind document.ilg document.idx document.aux document.log document.bbl document.blg

clean: remove_tempfiles
	$(RM) document.pdf

rebuild: clean all
