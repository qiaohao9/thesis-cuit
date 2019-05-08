.PHONY: pdf
pdf:
	latexmk --xelatex thesis-cuit
.PHONY: clean
clean: thesis-cuit.pdf
	latexmk -c thesis-cuit
