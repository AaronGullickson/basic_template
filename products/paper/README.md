# paper directory

This directory contains all the files necessary to produce a final manuscript. 

When possible, I attempt to write the manuscript in R Markdown. The `main.Rmd` is used to write the main manuscript. I use a custom tex template [adapated from Steven V. Miller](http://svmiller.com/blog/2016/02/svm-r-markdown-manuscript/) to produce the R Markdown in PDF format. You can define a variety of options in the YAML header to get a different look. The template itself contains more details about all of these options. Most importantly, the `anonymous` option can be changed to true to remove author names and change to the crappy double spaced and ragged edged manuscript that most journals expect. You can see a version of what a nicely formatted version of this template looks like [here](https://aarongullickson.github.io/assets/fullmanuscript.pdf) and a version that has been anonymized [here](https://aarongullickson.github.io/assets/fullmanuscript_submission.pdf). I also include an MS Word template that can be used to knit to Word when necessary.  

I keep information on title, authors, affiliations, abstract, and acknowledgements in a separate `paper_info.yaml`. This information will be added to the `main.Rmd` output when knit. This way the same information can also be used to generate a title page pdf with `title_page.Rmd` without having to copy everything over. Such title pages are often required by journals (god knows why we need them in this day and age). 

I sometimes just write the manuscript using `main.Rmd`. However, sometimes it is preferable to keep separate Rmd files for tables and figures and any technical appendices. Journals often want tables and figures at the end of the document and sometimes I just don't want my main document to be slowed down by the processing of code. Starter code for these two R Markdown files are also located in this directory. When I do it this way, the three PDFs can be combined together with the `generate_full_paper.R` script. This will create a `full_manuscript.pdf` file that includes all PDFs. One of the the nice features of this script is that it will adjust the page numbers of the additional R Markdown files when it knits so that the final document will have proper pagination throughout. At the top of this script are two boolean options to indicate whether you want a particular thing to be knit and added to the full manuscript. 

In order to create tables and figures, I usually just load constructed data from the analysis side of the directory using relative paths from within R Markdown. Something like:

```
load("../../analysis/output/constructed_data.RData")
```

This ensures that the analysis and paper are drawing from the same data source. 

Citation is done using the `project.bib` bibtex file. I usually create this file from Zotero. See [here](http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html#bibliography_placement) for information about citation syntax in R Markdown.
