#! TO DO:
#! add a rule for rendering the combined report
combined_report.html: combined_report.Rmd render_combined_report.R \
  subproject1/output/table_one.rds subproject1/output/scatter.png \
  subproject2/output/model_summaries.rds
	Rscript render_combined_report.R 


#! TO DO:
#! add a rule for building the output of 
#! subproject1/code/01_make_table1.R
subproject1/output/table_one.rds: subproject1/code/01_make_table1.R output/data_clean.rds
	Rscript subproject1/code/01_make_table1.R

#! TO DO:
#! add a rule for building the output of 
#! subproject1/code/02_make_scatter.R
subproject1/output/scatter.png: subproject1/code/02_make_scatter.R output/data_clean.rds
	Rscript subproject1/code/02_make_scatter.R

#! TO DO:
#! add a rule for building the output of 
#! subproject2/code/01_models.R
subproject2/output/model_summaries.rds: subproject2/code/01_models.R output/data_clean.rds
	Rscript subproject2/code/01_models.R
	
	