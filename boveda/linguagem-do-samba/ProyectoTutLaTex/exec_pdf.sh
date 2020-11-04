filename=tutorial

latex $filename
bibtex $filename
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
latex $filename
latex $filename
dvips -o $filename.ps $filename.dvi
dvipdfmx $filename.dvi

./clean_pdf.sh
