## code to prepare `hf_soil` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-hfr.343.1&entityid=8f8ab5bc9c77d2ef88bcf72ee186911e"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir())

# Read in data
and_files <- read_d1_files(and_download)
hf_soil <- and_files$data

usethis::use_data(hf_soil, overwrite = TRUE)
