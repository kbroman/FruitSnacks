all: assets/fruit_snacks.html assets/fruit_snacks_scanned.pdf assets/fruit_snacks_methods.html

assets/%.html: ../R/%.html
	cp $< $@

assets/fruit_snacks_scanned.pdf: ../Data/fruit_snacks_scanned.pdf
	cp $< $@
