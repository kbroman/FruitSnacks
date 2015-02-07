fig_files <- list.files("../Photos", pattern = "fruitsnacks.*\\.png$")
writeLines(paste0(fig_files, "\n",
                  "![`", fig_files, "`](", fig_files, ")\n\n"), "../Photos/ReadMe.md")
