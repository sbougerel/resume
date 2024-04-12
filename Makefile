.PHONY: all clean purge view text

LATEX_ENGINE=pdflatex
LATEX_ENGINE_OPTION=
TXT_EXTRACT=pdftotext -raw
VIEW=evince
SRC=src
OUT=out
TARGETS=$(OUT)/long.pdf $(OUT)/short.pdf
TXTS=$(OUT)/long.txt $(OUT)/short.txt

all: $(TARGETS)

txt: $(TXTS)

clean:
	rm $(TARGETS)

purge:
	rm $(OUT)/*
	rmdir $(OUT)

view:
	$(VIEW) $(OUT)/*.pdf&

$(OUT):
	mkdir $@

$(OUT)/%.pdf: $(SRC)/%.tex | $(OUT)
	TEXINPUTS=$$TEXINPUTS:$(SRC) $(LATEX_ENGINE) $(LATEX_ENGINE_OPTION) -output-directory=$(OUT) $<

$(OUT)/%.txt: $(OUT)/%.pdf
	$(TXT_EXTRACT) $<
