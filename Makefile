.PHONY: pdf ps dvi view clean

LATEXMK = latexmk

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



