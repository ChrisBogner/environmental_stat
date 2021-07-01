# Load libraries
library(fontawesome)
library(kableExtra)
library(tidyverse)
library(DT)

knitr::knit_hooks$set(document = function(x) {
  sub('\\usepackage{graphicx, color}',
      '\\usepackage{graphicx,xcolor}', x, fixed = TRUE)
}) 



# These are different helper functions for the book

colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color, 
            x)
  } else x
}

file.name <- function(x) {
  if (knitr::is_latex_output()) {
    sprintf("\\texttt{%s}", x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='font-family: sans-serif; font-size: 12pt'>%s</span>",
            x)
  } else x
}