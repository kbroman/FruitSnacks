fig_files <- list.files("../Photos", pattern = "fruitsnacks.*\\.png$")
writeLines(paste0(fig_files, "\n",
                  "![`", fig_files, "`](", fig_files, ")\n\n"), "../Photos/ReadMe.md")
writeLines(paste0("Photos/", fig_files, "\n",
                  "![`Photos/", fig_files, "`](Photos/", fig_files, ")\n\n"), "../PhotoGallery.md")
