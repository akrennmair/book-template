PANDOC=pandoc
LATEX=pdflatex
KINDLEGEN=kindlegen

FILE_PREFIX=your-book

MD_FILE=$(FILE_PREFIX).md
EPUB_FILE=$(FILE_PREFIX).epub
PDF_FILE=$(FILE_PREFIX).pdf
MOBI_FILE=$(FILE_PREFIX).mobi
TEX_FILE=$(FILE_PREFIX).tex
REF_FILE=refs.bib
IDX_FILE=$(FILE_PREFIX).idx
TMPL=template.tex

all: $(EPUB_FILE) $(PDF_FILE) $(MOBI_FILE)

$(EPUB_FILE): $(MD_FILE) $(REF_FILE)
	$(PANDOC) -o $@ \
		-f markdown+smart+markdown_in_html_blocks \
		--epub-chapter-level=2 \
		--toc --toc-depth=2 \
		--bibliography=$(REF_FILE) \
		--csl=style.csl \
		--filter plugins/pandoc-wrapfig.py \
		--filter plugins/pandoc-filter-format.py \
		--epub-cover-image=images/cover_ebook.jpg \
		$<

$(PDF_FILE): $(TEX_FILE)
	$(LATEX) $(TEX_FILE)
	biber $(basename $(PDF_FILE))
	makeindex $(IDX_FILE)
	$(LATEX) $(TEX_FILE)
	$(LATEX) $(TEX_FILE)

$(TEX_FILE): $(MD_FILE) $(REF_FILE) $(TMPL)
	$(PANDOC) -o $@ \
		-s \
		-f markdown+smart \
		--toc --toc-depth=2 \
		--bibliography=$(REF_FILE) \
		--csl=style.csl \
		--filter plugins/pandoc-wrapfig.py \
		--filter plugins/pandoc-filter-format.py \
		--template=$(TMPL) \
		$<

$(MOBI_FILE): $(EPUB_FILE)
	$(KINDLEGEN) $< || true

spell: $(MD_FILE)
	aspell --lang=en_GB --home-dir=. --personal=dict.txt -t -c $<

lint: $(REF_FILE)
	biber --tool -V $<


clean:
	$(RM) $(EPUB_FILE) $(PDF_FILE) $(MOBI_FILE) $(TEX_FILE) $(IDX_FILE) *.aux *.ilg *.ind *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml

.PHONY: clean spell lint
