paper.pdf: paper.tex ref.bib
	latexmk -bibtex -pdf paper.tex

.PHONY: clean
clean:
	latexmk -c
