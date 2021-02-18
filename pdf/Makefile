FILES = rapport
TEX = $(FILES:%=%.tex)
PDF = $(FILES:%=%.pdf)
LATEXMK_FLAGS ?= -quiet

pdf: $(PDF)

%.pdf: %.tex
	latexmk $(LATEXMK_FLAGS) -pdf -f $<

cleantmp:
	latexmk $(LATEXMK_FLAGS) -c

clean:
	latexmk $(LATEXMK_FLAGS) -C

.PHONY: pdf cleantmp clean
