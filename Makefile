
TEX=pdflatex
ALL: cv.en.pdf cv.es.pdf cv.pdf

cv.en.pdf: cv.tex cv.en.tex
	$(TEX) cv.en.tex

cv.es.pdf: cv.tex cv.es.tex
	$(TEX) cv.es.tex

cv.pdf: cv.tex
	$(TEX) cv.tex
