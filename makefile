open: out/main.pdf
	open out/main.pdf&

build: out/main.pdf

clean:
	rm out/*

bib:
	bibtex out/main

idx:
	makeindex out/main.nlo -s nomencl.ist -o out/main.nls

out/main.pdf: src/*
	lualatex --output-directory out src/main.tex

.PHONY: build open clean out/main.pdf
