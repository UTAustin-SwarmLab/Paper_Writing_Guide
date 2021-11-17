TEX = pdflatex
TARGET=Chinchali.PaperWritingGuide.2021
BIB = bibtex
PDF = ps2pdf
PS = dvips
RM = rm -rf
all:
	$(TEX) $(TARGET).tex
	$(BIB) $(TARGET).aux
	$(TEX) $(TARGET).tex
	$(TEX) $(TARGET).tex
clean:
	$(RM) $(TARGET).out $(TARGET).aux $(TARGET).bbl $(TARGET).dvi $(TARGET).pdf $(TARGET).blg $(TARGET).log $(TARGET).ps
