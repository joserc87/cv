
TEX=pdflatex
CONVERT=convert # Needs imagemagick

ALL: cv.en.pdf cv.es.pdf cv.pdf cv-0.png

cv.en.pdf: cv.tex cv.en.tex
	$(TEX) cv.en.tex

cv.es.pdf: cv.tex cv.es.tex
	$(TEX) cv.es.tex

cv.pdf: cv.tex
	$(TEX) cv.tex

cv-0.png: cv.pdf
	$(CONVERT) -density 200 cv.pdf -quality 85 cv.png

clean:
	rm *.out *.aux *.log
