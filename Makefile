
DOCKER_IMAGE=drpsychick/texlive-pdflatex
UID := $(shell id -u)
GID := $(shell id -g)
TEX=docker run \
	-it \
	--rm \
	--user $(UID):$(GID) \
	-v $(PWD):/data \
	$(DOCKER_IMAGE) \
	pdflatex
DIR=/data
CONVERT= docker run \
	--rm \
	--user $(UID):$(GID) \
	-v $(PWD)/bin:/$(DIR)/bin \
	dpokidov/imagemagick
PDF_FILE=bin/JoseRamonCanoCV
CLEAN=rm -f *.out *.aux *.log

ALL: bin $(PDF_FILE)-en.pdf $(PDF_FILE)-es.pdf $(PDF_FILE)-en.png

test:
	echo $(UID):$(GID)

bin:
	mkdir -f bin

$(PDF_FILE)-en.pdf: cv.tex cv.en.tex tex/*.tex
	$(TEX) $(DIR)/cv.en.tex
	mv cv.en.pdf $(PDF_FILE)-en.pdf
	$(CLEAN)

$(PDF_FILE)-es.pdf: cv.tex cv.es.tex tex/*.tex
	$(TEX) $(DIR)/cv.es.tex
	mv cv.es.pdf $(PDF_FILE)-es.pdf
	$(CLEAN)

# The PNG is just for github
$(PDF_FILE)-en.png: $(PDF_FILE)-en.pdf
	$(CONVERT) -density 96 $(DIR)/$(PDF_FILE)-en.pdf +append $(DIR)/$(PDF_FILE)-en.png

clean:
	$(CLEAN)
