all: assets/fruit_snacks.html assets/fruit_snacks_scanned.pdf

assets/fruit_snacks.html: ../R/fruit_snacks.html
	cp $< $@

assets/fruit_snacks_scanned.pdf: ../Data/fruit_snacks_scanned.pdf
	cp $< $@
