LATEXMK = latexmk
TEXFILE = main.tex
OUTDIR = build

all: $(OUTDIR)/main.pdf

$(OUTDIR)/main.pdf: $(TEXFILE)
	@mkdir -p $(OUTDIR)
	$(LATEXMK) -pdf -output-directory=$(OUTDIR) $(TEXFILE)

watch:
	$(LATEXMK) -interaction=nonstopmode -halt-on-error -pdf -pvc -output-directory=$(OUTDIR) $(TEXFILE)

clean:
	$(LATEXMK) -C -output-directory=$(OUTDIR)
	rm -rf $(OUTDIR)

.PHONY: all watch clean

