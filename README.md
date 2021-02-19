[![Netlify Status](https://api.netlify.com/api/v1/badges/87881163-e7ca-4a8c-8fd3-56b3531cb445/deploy-status)](https://app.netlify.com/sites/standard-inputs/deploys)



This is a prototype for *Standard Inputs for EUROCONTROL Cost-Benefit Analyses*.
It is based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown).

## Setup

**BEWARE**: this project uses `renv` so on a MS Windows machine its cache and
the project folder have to be in a folder where cached packages can be written
and executed.
See instructions [here](https://github.com/euctrl-pru/portal/wiki/Tools-Installation-and-Setup#renv).



## TODO's

* [ ] define a LaTeX book template, see 
  - https://bookdown.org/yihui/bookdown/publishers.html
  - https://www.overleaf.com/gallery/tagged/book
  - https://blog.datascienceheroes.com/how-to-self-publish-a-book-customizing-bookdown/
* [ ] cover page, see maybe 
  - https://github.com/martinhelso/mnfrontpage
  - https://tex.stackexchange.com/questions/17579/how-can-i-design-a-book-cover
* [ ] document metadata page
* [ ] approval page: maybe just insert a PDF page using `prdfpages` (see prebody.tex)
* [ ] add PDF metadata info via `hyperref`