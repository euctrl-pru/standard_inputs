create_book <- function(type) {

  if(type == "pdf") {
    # rmarkdown::render_site(
    #   output_format = bookdown::pdf_book(template       = "template.tex",
    #                                      latex_engine   = "pdflatex",
    #                                      toc_unnumbered = FALSE))
    rmarkdown::render_site(
      output_format = bookdown::pdf_book(
        latex_engine   = "pdflatex",
        toc_unnumbered = TRUE))
  } else if(type == "html"){
    rmarkdown::render_site(
      output_format = "bookdown::gitbook",
      encoding = "UTF-8")
  } else {
    print('nope')
  }
}

rmarkdown::clean_site()

## Creating the PDF
create_book("pdf")

## Creating the HTML
create_book("html")
