OUT := $(CURDIR)/out

.PHONY: all developer user clean distclean

all: developer user

developer:
	mkdir -p $(OUT)
	cd developer-manual && latexmk -pdf \
		-output-directory=$(OUT) \
		developer-manual.tex

user:
	mkdir -p $(OUT)
	cd user-manual && latexmk -pdf \
		-output-directory=$(OUT) \
		user-manual.tex

clean:
	cd developer-manual && latexmk -c \
		-output-directory=$(OUT) \
		developer-manual.tex
	-cd user-manual && latexmk -c \
		-output-directory=$(OUT) \
		user-manual.tex

distclean:
	rm -rf $(OUT)
