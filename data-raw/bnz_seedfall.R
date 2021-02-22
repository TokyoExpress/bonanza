## code to prepare `bnz_seedfall` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-bnz.14.28&entityid=4ac7132262a4e0b9ea774805ee2f9206"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir())

# Read in data
and_files <- read_d1_files(and_download)
bnz_seedfall <- and_files$data

usethis::use_data(bnz_seedfall, overwrite = TRUE)
