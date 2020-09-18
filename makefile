all:
	pdflatex toolkit.tex

clean:
	rm -f *.aux *.log *.toc *.scr *.bcf *.blg

distclean:clean
	rm -f *.bbl *.blg main.pdf

bib:
	pdflatex toolkit.tex
	bibtex toolkit
	pdflatex toolkit.tex
	pdflatex toolkit.tex
