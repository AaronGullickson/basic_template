#a script to knit and produce the full document

#You can specify below what additional Rmd files you want to be added to
#main.pdf for the full manuscript (currently tables and figures and appendix).
#The program will change page numbering for the supplementary pdfs so there
#is no need to change page numbers in the YAML. The script will also
#create a title page since many journals require this. 

separate_tabfigs <- TRUE
separate_appendix <- TRUE

library(pdftools)
library(rmarkdown)

# Knit PDFs ---------------------------------------------------------------

#first remove all existing PDF files
system("rm *.pdf")

#assume main.Rmd exists or no point to this
render("main.Rmd")

#now render additional pdfs
list_of_pdfs <- "main.pdf"
start_page <- pdf_length("main.pdf")+1
if(separate_tabfigs & file.exists("tablesfigs.Rmd")) {
  render("tablesfigs.Rmd", 
         output_options = list(pandoc_args = c(paste("--metadata=pagenumber:", 
                                                     start_page, sep=" "))))
  start_page <- start_page + pdf_length("tablesfigs.pdf")
  list_of_pdfs <- c(list_of_pdfs, "tablesfigs.pdf")
}
if(separate_appendix & file.exists("appendix.Rmd")) {
  render("appendix.Rmd", 
         output_options = list(pandoc_args = c(paste("--metadata=pagenumber:", 
                                                     start_page, sep=" "))))
  list_of_pdfs <- c(list_of_pdfs, "appendix.pdf")
}

#now do the title page
if(file.exists("title_page.Rmd")) {
  render("title_page.Rmd")
}

pdf_combine(list_of_pdfs, output = "full_manuscript.pdf")
