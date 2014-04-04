.PHONY: pdf ps dvi  view clean

pdf:
	./latexmk -pdf

ps:
	./latexmk -ps

dvi:
	./latexmk -dvi

view:
	./latexmk -pdf -pv

clean:
	./latexmk -C

