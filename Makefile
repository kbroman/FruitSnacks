all: R/fruit_snacks.html Photos/ReadMe.md

R/fruit_snacks.html: R/fruit_snacks.Rmd
	cd R;R -e "rmarkdown::render('$(<F)')"

Photos/ReadMe.md: R/generate_photo_gallery.R
	cd R;R CMD BATCH $(<F)
