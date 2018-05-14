#!/bin/bash

# This shell script will re-run the entire analysis from the raw data. 
# This is key to reproducablity. If you cannot reproduce your entire analysis
# from here then you are doing it wrong.

# This script assumes that you are usign the basic file structure of the basic
# template. As new scripts are added to a more complicated actual analysis, this
# script should be updated to reflect those changes.

# Remove all logs, output, and html reports. Keep in mind that this will also remove README files
# in output and logs directory. 
rm output/*
rm logs/*
rm *.html

# check for necessary R packages
Rscript check_packages.R

# Process and clean the raw data and produce analytical dataset(s) and 
# send output to log directory as HTML
Rscript -e "rmarkdown::render('organize_data.R',output_file='organize_data.html',output_dir='logs')"

# Run the main analysis
Rscript -e "rmarkdown::render('analysis.Rmd')"
