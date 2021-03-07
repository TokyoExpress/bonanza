## code to prepare `nes_diet` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-nes.2.2&entityid=ae192ab77a510ee7b8f155770a0a157b"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir(), dir_name = "nes_diet")

# Read in data
and_files <- read_d1_files(and_download)
nes_diet <- and_files$data

usethis::use_data(nes_diet, overwrite = TRUE)

