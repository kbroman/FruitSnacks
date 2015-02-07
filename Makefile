all: R/fruit_snacks.html Photos/ReadMe.md

R/fruit_snacks.html: R/fruit_snacks.Rmd
	cd R;R -e "rmarkdown::render('$(<F)')"

Photos/ReadMe.md: R/generate_photo_gallery.R Photos/thumbs/thumb01.png
	cd R;R CMD BATCH $(<F)

Photos/thumbs/thumb01.png: R/create_thumbnails.R
	cd R;R CMD BATCH $(<F)
