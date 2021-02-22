## code to prepare `sbc_reef` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
and_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-sbc.30.19&entityid=4587fe81c6d2eabf530c70e53b302132"

# Download the data package with metajam
and_download <- download_d1_data(data_url = and_url, path = tempdir())

# Read in data
and_files <- read_d1_files(and_download)
sbc_reef <- and_files$data

usethis::use_data(sbc_reef, overwrite = TRUE)
