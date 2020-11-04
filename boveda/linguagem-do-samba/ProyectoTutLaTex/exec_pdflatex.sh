filename=tutorial

pdflatex $filename
bibtex $filename
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
pdflatex $filename
pdflatex $filename

./clean_pdf.sh
