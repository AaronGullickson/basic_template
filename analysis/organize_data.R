#' ---
#' title: "organize_data.R"
#' author: "Dalton Richardson"
#' ---

# This script will read in raw data from the input directory, clean it up to produce 
# the analytical dataset, and then write the analytical data to the output directory. 

#source in any useful functions
source("useful_functions.R")

library(haven)
mydata <- read_sav("input/CCAM SPSS Data(2).sav")