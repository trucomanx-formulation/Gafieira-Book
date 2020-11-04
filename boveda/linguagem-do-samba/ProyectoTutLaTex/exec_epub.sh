filename=tutorial

mkdir -p tutorial

latex $filename
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
htlatex  tutorial.tex "" "" -dtutorial/
bibtex tutorial
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
htlatex  tutorial.tex "" "" -dtutorial/

./clean_html.sh


cd tutorial
ebook-convert tutorial.html tutorial.epub --language es --no-default-epub-cover --pretty-print
cp tutorial.epub ../
cd ..

rm -R tutorial




