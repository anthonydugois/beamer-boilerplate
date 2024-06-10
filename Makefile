LATEX = latexmk
BUILD = build

$(BUILD)/%.pdf: %.tex include/theme.sty
	mkdir -p $(BUILD)
	$(LATEX) -pdf -outdir=$(BUILD) $<

.PHONY: all
all: $(BUILD)/main.pdf

.PHONY: clean
clean:
	rm -rf $(BUILD)
