## code to prepare `bnz_peatland` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-bnz.468.14&entityid=4918d99be4d194ba07db349115ab7dc4"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir())

# Read in data
and_files <- read_d1_files(and_download)
bnz_peatland <- and_files$data

usethis::use_data(bnz_peatland, overwrite = TRUE)
