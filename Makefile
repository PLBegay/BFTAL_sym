all:
	latex -shell-escape main
	bibtex main
	pdflatex -shell-escape main