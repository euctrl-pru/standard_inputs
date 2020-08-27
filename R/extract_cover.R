library(fs)
library(pdftools)
library(dplyr)
library(png)


base_dir <- "C:/Users/spi/Downloads"
filename <- "standard-input-for-eurocontrol-cost-benefit-analyses-2018-edition-8-version-2.6.pdf"

pdf_file <- fs::path_abs(filename, start = base_dir)
# fs::file_exists(pdf_file)

pdf_render_page(pdf_file, page = 1) %>% 
  png::writePNG(here::here("cover.png"))

# Extract cover pages (1 and 2) to cover.pdf
# $ pdftk ~/dir/standard-input-for-eurocontrol-cost-benefit-analyses-2018-edition-8-version-2.6.pdf \
#     cat 1-2 output cover.pdf