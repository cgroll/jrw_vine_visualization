TMPL = pandoc_custom/templates/revealjs.template
CSL = pandoc_custom/csl/chicago-author-date-ital-author-bold-title.csl

OUTDIR = output
CURRENT_TARGET = output/contents

PICS = pics/threeDimVine.svg

current: $(CURRENT_TARGET).slides.html



$(OUTDIR)/contents.slides.html: src/contents.md Makefile refs.bib $(PICS)
	pandoc --template=$(TMPL) \
	-V slideNumber=true \
	--slide-level=2 --toc --toc-depth=1 \
	--filter pandoc_custom/filters/amsmath.hs \
	-s -V revealjs-url=../reveal.js -t revealjs -f markdown \
	--include-in-header=pandoc_custom/css/reveal_left_strong.css \
	--filter pandoc-citeproc --csl=$(CSL) \
	--bibliography=refs.bib \
	-o $@ $<


pics/threeDimVine.svg: pics/threeDimVine.dot
	dot -Tsvg -o $@ $<
