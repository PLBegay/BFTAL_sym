## adapté de https://tex.stackexchange.com/questions/40738/how-to-properly-make-a-latex-project
TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB = bibtex

.PHONY: all view

all : main.pdf

view :
	open main.pdf

main.pdf : main.tex main.bbl main.blg
	$(TEX) main.tex

main.bbl main.blg : main.bib main.aux
	$(BIB) main

main.aux : main.tex
	$(TEX) main.tex

main.bib : main.tex
	$(TEX) main.tex
