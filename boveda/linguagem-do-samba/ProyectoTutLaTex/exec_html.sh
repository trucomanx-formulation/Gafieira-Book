filename=tutorial

mkdir -p tutorial

latex $filename
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
htlatex  tutorial.tex "" "" -dtutorial/
makeindex -s nomencl.ist -t $filename.nlg $filename.nlo -o $filename.nls
bibtex tutorial
htlatex  tutorial.tex "" "" -dtutorial/

./clean_html.sh


