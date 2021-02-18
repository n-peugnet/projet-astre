FILES = rapport
TEX = $(FILES:%=%.tex)
PDF = $(FILES:%=%.pdf)

# Debug flags
ifdef DEBUG
LATEXMK_FLAGS += -verbose
else
LATEXMK_FLAGS += -quiet
endif

pdf: $(PDF)

%.pdf: %.tex
	latexmk $(LATEXMK_FLAGS) -pdf -f $<

cleantmp:
	latexmk $(LATEXMK_FLAGS) -c

clean:
	latexmk $(LATEXMK_FLAGS) -C

.PHONY: pdf cleantmp clean
