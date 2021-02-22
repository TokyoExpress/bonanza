## code to prepare `anole_mark` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-luq.5.347700&entityid=4aacbd7e95d37636d362ee2752382c74"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir())

# Read in data
and_files <- read_d1_files(and_download)
anole_mark <- and_files$data

usethis::use_data(anole_mark, overwrite = TRUE)
