paper.pdf: paper.tex
	latexmk -bibtex -pdf paper.tex

.PHONY: clean
clean:
	latexmk -c
