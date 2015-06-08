.PHONY: pdf ps dvi view clean test

LATEXMK = latexmk
PDFVIEWER = evince
DVIVIEWER = evince

pdf:
	$(LATEXMK) -pdf

ps:
	$(LATEXMK) -ps

dvi:
	$(LATEXMK) -dvi

view:
	$(LATEXMK) -pdf -pv

clean:
	$(LATEXMK) -C

test:
	$(LATEXMK) -C
	$(LATEXMK) -pdf
	$(PDFVIEWER) test.pdf
	$(LATEXMK) -C
	$(LATEXMK)
	$(DVIVIEWER) test.dvi
	$(LATEXMK) -C
	@echo "Files after cleaning:"
	@git status graphics --ignored --short



