main.pdf: main.md | info.md templates/head.tex
	pandoc --pdf-engine=xelatex --metadata-file=info.md --citeproc -M date="`date "+%B %e, %Y"`" --include-in-header templates/head.tex $< -o $@

watch :
	find main.md | entr -p -c 'make'

all: main.pdf
