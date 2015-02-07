fig_files <- list.files("../Photos", pattern = "fruitsnacks.*\\.png$")
thumbs <- gsub("fruitsnacks", "thumbs/thumb", fig_files)
for(i in seq(along=fig_files))
    system(paste0("convert ../Photos/", fig_files[i],
                  " -resize 200x200 ../Photos/", thumbs[i]))
