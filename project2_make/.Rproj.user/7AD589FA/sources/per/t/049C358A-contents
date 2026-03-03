#! TO DO:
#! add a rule to build the report

#! TO DO:
#! add a rule to create the output of 
#! code/01_make_output1.R
 code/01_make_output1.R output/random_numbers1.rds
	Rscript code/01_make_output1.R
	
#! TO DO:
#! add a rule to create the output of 
#! code/02_make_output2.R
code/02_make_output2.R output/random_numbers2.rds
	Rscript code/02_make_output2.R
#! TO DO:
#! add a rule to create the output of 
#! code/03_make_output3.R
code/03_make_output3.R output/random_numbers3.rds
	Rscript code/03_make_output3.R
	
#! TO DO:
#! add a PHONY target for removing .rds files
#! from the output1/2/3 directories
.PHONY: clean	
clean:
	rm -f output/*.rds 
