#!/bin/bash
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex
#pdflatex -interaction=nonstopmode cover.tex



pdflatex -shell-escape main
makeindex main.idx -s StyleInd.ist
biber main
pdflatex -shell-escape main
pdflatex -shell-escape main x 2

#rename main.pdf bsltool-userman.pdf

./clean.sh
