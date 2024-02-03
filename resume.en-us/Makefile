.PHONY: clean preview

LATEX=latex
PDF_LATEX=pdflatex
VIEWER=evince

LATEX_OPTION=
PDF_LATEX_OPTION=

CLEAN=*.log *.pdf *.aux *.out

CV=main
CLASS=developercv

# Target
$(CV).pdf: $(CV).tex $(CLASS).cls
	$(PDF_LATEX) $(PDF_LATEX_OPTION) $(CV).tex

preview:
	$(VIEWER) *.pdf

clean:
	rm -f $(CLEAN)

