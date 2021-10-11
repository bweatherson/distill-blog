require(tidyverse)

files <- list.files(pattern = "tex")

for (i in 29:length(files)){
  t <- files[i]
  b <- sub(".tex", ".md", t)
  pandoc_convert(t, output = b)
}