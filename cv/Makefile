.PHONY: all watch clean

all: cv.pdf

cv.pdf: cv.tex resume.sty
	latexmk -pdf -interaction=nonstopmode -halt-on-error cv.tex

watch:
	latexmk -pdf -pvc -interaction=nonstopmode cv.tex

clean:
	latexmk -C
