here::i_am("subproject1/code/02_make_scatter.R")

#! TO DO: add appropriate location


data <- readRDS(
  file = here::here ("data/data_clean.rds")) 
    #! TO DO: add appropriate file path to data_clean.rds

library(ggplot2)

scatterplot <- 
  ggplot(data, aes(x = shield_glycans, y = ab_resistance)) +
    geom_point() +
    geom_smooth(method = lm) +
    theme_bw()



ggsave(
  filename = here::here("subproject1", "output", "scatter.png"), 
  #! TO DO: add appropriate file path to subproject1/output
  plot = scatterplot,
  device = "png"
)


