.PHONY: clean preview

LATEX=latex
PDF_LATEX=pdflatex
VIEWER=evince

LATEX_OPTION=
PDF_LATEX_OPTION=

CV=main
CLASS=developercv
CLEAN=$(CV).log $(CV).pdf $(CV).aux $(CV).out


# Target
$(CV).pdf: $(CV).tex $(CLASS).cls
	$(PDF_LATEX) $(PDF_LATEX_OPTION) $(CV).tex

preview:
	$(VIEWER) $(CV).pdf

clean:
	rm -f $(CLEAN)

