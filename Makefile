
TEX=pdflatex
CONVERT=convert # Needs imagemagick
PDF_FILE=bin/JoseRamonCanoCV

ALL: $(PDF_FILE)-en.pdf $(PDF_FILE)-es.pdf $(PDF_FILE)-en.png

bin:
	mkdir -f bin

$(PDF_FILE)-en.pdf: bin cv.tex cv.en.tex
	$(TEX) cv.en.tex
	mv cv.en.pdf $(PDF_FILE)-en.pdf

$(PDF_FILE)-es.pdf: bin cv.tex cv.es.tex
	$(TEX) cv.es.tex
	mv cv.es.pdf $(PDF_FILE)-es.pdf

$(PDF_FILE)-en.png: bin $(PDF_FILE)-en.pdf
	$(CONVERT) -density 96 $(PDF_FILE)-en.pdf +append $(PDF_FILE)-en.png

clean:
	rm *.out *.aux *.log
