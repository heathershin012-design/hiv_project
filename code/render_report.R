library(rmarkdown)
# rendering a report in production mode
render("hiv_report.Rmd")

# rendering a report in "test" mode
render(
  "hiv_report.Rmd", 
  params = list(
    production = FALSE,
    cutpoint = 0
  ),
  output_file = "hiv_report_testing_cutpoint0.html"
)
