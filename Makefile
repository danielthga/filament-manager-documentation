OUT := out

.PHONY: all developer user clean distclean

all: developer

developer:
	mkdir -p $(OUT)
	latexmk -pdf \
		-output-directory=$(OUT) \
		developer-manual/developer-manual.tex

user:
	mkdir -p $(OUT)
	latexmk -pdf \
		-output-directory=$(OUT) \
		user-manual/user-manual.tex

clean:
	latexmk -c \
		-output-directory=$(OUT) \
		developer-manual/developer-manual.tex
	- latexmk -c \
		-output-directory=$(OUT) \
		user-manual/user-manual.tex

distclean:
	rm -rf $(OUT)
