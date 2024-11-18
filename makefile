MD_FILES :=  $(shell find . -name 'main.md')
PDF_FILES := $(addsuffix .pdf, $(basename $(MD_FILES)))

%/main.pdf: %/main.md | templates/info.md templates/head.tex
	pandoc --pdf-engine=xelatex --metadata-file=templates/info.md --bibliography templates/bib/bib.bib --citeproc -M date="`date "+%B %e, %Y"`" --include-in-header templates/head.tex --resource-path=$(dir $<) $< -o $@


all: $(PDF_FILES)

watch :
	find */main.md | entr -s -p -c 'make all'

clean:
	rm $(PDF_FILES)
