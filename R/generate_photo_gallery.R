fig_files <- list.files("../Photos", pattern = "fruitsnacks.*\\.png$")
thumbs <- gsub("fruitsnacks", "thumbs/thumb", fig_files)

writeLines(paste0(fig_files, "\n",
                  "[![`", fig_files, "`](", thumbs, ")](", fig_files, ")\n\n"), "../Photos/ReadMe.md")

fig_files <- paste0("Photos/", fig_files)
thumbs <- paste0("Photos/", thumbs)
writeLines(paste0(fig_files, "\n",
                  "[![`", fig_files, "`](", thumbs, ")](", fig_files, ")\n\n"), "../PhotoGallery.md")
