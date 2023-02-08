---
title: "Exercises - 0"
---

# Setting up a Typesetting system

The current workflow uses:

- Pandoc (<https://pandoc.org/installing.html>, v. 3.0.1),
- \LaTeX (or, actually, xelatex) (<https://www.latex-project.org/get/>),
- makefiles (that are native to Unix systems, but can be ported in windows using [Cygwin](https://cygwin.com/install.html))

The typical file hierarchy is:

```
├── bib
│   └── bib.bib
├── img
├── info.md
├── main.md
├── makefile
└── templates
    ├── head.tex
    └── theoretical-computer-science.csl
```

Where

- `bib.bib` is a file containing references, using the [bibtex](http://www.bibtex.org/) formatting, often used with \LaTeX.
- `img/` contains potential images loaded in the main document,
- `info.md` contains some meta-data and instructions for the formatting (they could be in `main.md` as well, it is just to keep that later file as small as possible, and to be able to re-use this templating easily),
- `makefile` gives instructions on how to generate `.tex` and `.pdf` files from `main.md`, using commands such as

    ```
    pandoc --pdf-engine=xelatex --metadata-file=info.md \
        --citeproc -M date="`date "+%B %e, %Y"`" \
        --include-in-header templates/head.tex $< -o $@
    ```
    
    that means:
    
    - Tell pandoc to process main.md (the `$<` parameter, which denotes in makefile the source we need to construct what we are constructing),
    - using XeLaTeX as the pdf engine,
    - using info.md for the metadatas,
    - using citeproc (which is a filter that process the bibliographical references),
    - setting the date to be the value returned by the command `date "+%B %e, %Y"` (so, the current date, formatted nicely),
    - including in the header the file `templates/head.tex`
    - and outputting into a file called main.pdf (the `$@` parameter, which denotes in makefile what we are constructing).
    
- `templates/head.tex` contains some \LaTeX tweaking (primarily about the sections, some unicode characters and the appareance of the links),
- `templates/theoretical-computer-science.csl` is the [Citation Style Language](https://citationstyles.org/) file, that explains how references should be displayed. Since this is very field-sensitive, many different formatting exist, and we pick the one for theoretical computer science.

If you install [entr](https://github.com/eradman/entr), you can also use `make watch` that will automatically re-compile `main.md` into `main.pdf` whenever `main.md` is modified (that is, edited and saved).
