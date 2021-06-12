PANDOC=pandoc
LATEX=pdflatex
KINDLEGEN=kindlegen

FILE_PREFIX=your-book

MD_FILE=$(FILE_PREFIX).md
EPUB_FILE=$(FILE_PREFIX).epub
PDF_PAPERBACK_FILE=$(FILE_PREFIX)_paperback.pdf
PDF_HARDCOVER_FILE=$(FILE_PREFIX)_hardcover.pdf
MOBI_FILE=$(FILE_PREFIX).mobi
TEX_PAPERBACK_FILE=$(FILE_PREFIX)_paperback.tex
TEX_HARDCOVER_FILE=$(FILE_PREFIX)_hardcover.tex
REF_FILE=refs.bib
IDX_PAPERBACK_FILE=$(FILE_PREFIX)_paperback.idx
IDX_HARDCOVER_FILE=$(FILE_PREFIX)_hardcover.idx
TMPL=template.tex

PAPERBACK_ISBN=YOUR-PAPERBACK-ISBN
HARDCOVER_ISBN=YOUR-HARDCOVER-ISBN

all: $(EPUB_FILE) $(PDF_PAPERBACK_FILE) $(PDF_HARDCOVER_FILE) $(MOBI_FILE)

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

$(PDF_PAPERBACK_FILE): $(TEX_PAPERBACK_FILE)
	$(LATEX) $(TEX_PAPERBACK_FILE)
	biber $(basename $(PDF_PAPERBACK_FILE))
	makeindex $(IDX_PAPERBACK_FILE)
	$(LATEX) $(TEX_PAPERBACK_FILE)
	$(LATEX) $(TEX_PAPERBACK_FILE)

$(PDF_HARDCOVER_FILE): $(TEX_HARDCOVER_FILE)
	$(LATEX) $(TEX_HARDCOVER_FILE)
	biber $(basename $(PDF_HARDCOVER_FILE))
	makeindex $(IDX_HARDCOVER_FILE)
	$(LATEX) $(TEX_HARDCOVER_FILE)
	$(LATEX) $(TEX_HARDCOVER_FILE)

$(TEX_PAPERBACK_FILE): $(MD_FILE) $(REF_FILE) $(TMPL)
	$(PANDOC) -o $@ \
		-s \
		-f markdown+smart \
		--toc --toc-depth=2 \
		--bibliography=$(REF_FILE) \
		--csl=style.csl \
		--filter plugins/pandoc-wrapfig.py \
		--filter plugins/pandoc-filter-format.py \
		-M isbn:$(PAPERBACK_ISBN) \
		--template=$(TMPL) \
		$<

$(TEX_HARDCOVER_FILE): $(MD_FILE) $(REF_FILE) $(TMPL)
	$(PANDOC) -o $@ \
		-s \
		-f markdown+smart \
		--toc --toc-depth=2 \
		--bibliography=$(REF_FILE) \
		--csl=style.csl \
		--filter plugins/pandoc-wrapfig.py \
		--filter plugins/pandoc-filter-format.py \
		-M isbn:$(HARDCOVER_ISBN) \
		--template=$(TMPL) \
		$<

$(MOBI_FILE): $(EPUB_FILE)
	$(KINDLEGEN) $< || true

spell: $(MD_FILE)
	aspell --lang=en_GB --home-dir=. --personal=dict.txt -t -c $<

lint: $(REF_FILE)
	biber --tool -V $<


clean:
	$(RM) $(EPUB_FILE) $(PDF_FILE) $(MOBI_FILE) $(TEX_PAPERBACK_FILE) $(TEX_HARDCOVER_FILE) $(IDX_PAPERBACK_FILE) $(IDX_HARDCOVER_FILE) *.aux *.ilg *.ind *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml

.PHONY: clean spell lint
