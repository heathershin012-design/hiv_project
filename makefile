

hiv_report_config_${WHICH_CONFIG}.html: code/04_render_report.R \
  hiv_report.Rmd  descriptive_analysis regression_analysis
	Rscript code/04_render_report.R


output/data_clean.rds: code/00_clean_data.R raw_data/vrc01_data.csv
	Rscript code/00_clean_data.R 
	
output/table_one.rds: code/01_make_table1.R 
	Rscript code/00_clean_data.R && Rscript code/01_make_table1.R
	
.PHONY: clean	
clean:
	rm -f output/*rds && rm -f output/*png && rm -f*.html
	
.PHONY: descriptive_analysis
descriptive_analysis: output/table_one.rds output/scatterplot.png

output/both_models_config_${WHICH_CONFIG}.rds \
  output/both_regression_tables_config_${WHICH_CONFIG}t.rds &: \
  code/03_model.R output/data_clean.rds
	Rscript code/03_model.R
	
.PHONY: regression_analysis
regression_analysis: output/both_models_config_${WHICH_CONFIG}.rds \
  output/both_regression_tables_config_${WHICH_CONFIG}.rds 


output/scatterplot.png: code/02_make_scatter.R output/data_clean.rds
	Rscript code/02_make_scatter.R