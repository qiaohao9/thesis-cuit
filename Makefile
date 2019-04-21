.PHONY: clean
clean:
	find . -name "*bbl" -or -name "*blg" -or -name "*toc" -or -name "*aux" -o -name "*log" -o -name "*out" -type f | awk '{ print }' | xargs rm

.PHONY: pdf
pdf:
	xelatex -shell-escape main.tex

.PHONY: bib
bib: pdf
	bibtex main.aux