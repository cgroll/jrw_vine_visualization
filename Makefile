TMPL = pandoc_custom/templates/revealjs.template
CSL = pandoc_custom/csl/elsevier-harvard.csl

OUTDIR = output
CURRENT_TARGET = output/contents

current: $(CURRENT_TARGET).slides.html

$(OUTDIR)/contents.slides.html: src/contents.md Makefile refs.bib
	pandoc --template=$(TMPL) \
	-V slideNumber=true \
	--slide-level=2 --toc --toc-depth=1 \
	--filter pandoc_custom/filters/amsmath.hs \
	-s -V revealjs-url=../reveal.js -t revealjs -f markdown \
	--include-in-header=pandoc_custom/css/reveal_left_strong.css \
	--filter pandoc-citeproc --csl=pandoc_custom/csl/elsevier-harvard.csl \
	--bibliography=refs.bib \
	-o $@ $<
