here::i_am("code/04_render_report.R")

WHICH_CONFIG <- Sys.getenv("WHICH_CONFIG")
config_list <- config::get(
  config =  WHICH_CONFIG
 )

library(rmarkdown)

setwd(here::here())  # <-- ensures render runs from project root

report_filename <- paste0(
  "hiv_report_config_",
  WHICH_CONFIG,
  ".pdf"
)

render(
  "hiv_report.Rmd",
  output_file = report_filename
)