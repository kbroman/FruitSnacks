fig_files <- list.files("../Photos", pattern = "fruitsnacks.*\\.png$")
thumbs <- gsub("fruitsnacks", "thumbs/thumb", fig_files)
writeLines(paste0(fig_files, "\n",
                  "![`", fig_files, "`](", thumbs, ")\n\n"), "../Photos/ReadMe.md")
writeLines(paste0("Photos/", fig_files, "\n",
                  "![`Photos/", fig_files, "`](Photos/", thumbs, ")\n\n"), "../PhotoGallery.md")
