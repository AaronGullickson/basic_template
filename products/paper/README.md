# Paper directory

This directory contains all the files necessary to produce a final manuscript. 

When possible, I attempt to write the manuscript in R Markdown. The `main.Rmd` is used to write the main manuscript. I use a custom tex template [adapated from Steven V. Miller](http://svmiller.com/blog/2016/02/svm-r-markdown-manuscript/) to produce the R Markdown in PDF format. You can define a variety of options in the YAML header to get a different look. The template itself contains more details about all of these options. Most importantly, the `anonymous` option can be changed to true to remove author names and change to the crappy double spaced and ragged edged manuscript that most journals expect. It also creates a separate title page in the document that can be used if you need to include a separate title page. You can see a version of what a nicely formatted version of this template looks like [here](https://aarongullickson.github.io/assets/fullmanuscript.pdf) and a version that has been anonymized [here](https://aarongullickson.github.io/assets/fullmanuscript_submission.pdf). I also include an MS Word template that can be used to knit to Word when necessary.  

I use R code chunks to embed tables and figures into the document. If you want these to show up at the end of the document, you can turn `endfloat` in the header to true. If you want to process the document but not be slowed down by R calculations, you can set `eval=FALSE` in the setup code chunk. 

In order to create tables and figures, I usually just load constructed data from the analysis side of the directory using the [here](https://github.com/jennybc/here_here) package. Something like:

```r
here("analysis", "output", "constructed_data.RData")
```

This ensures that the analysis and paper are drawing from the same data source. 

I use the bookdown `pdf_document2` format for output. This allows me to cross-reference table and figure numbers within the text using the format described [here](https://bookdown.org/yihui/rmarkdown-cookbook/cross-ref.html).

Citation is done using the `project.bib` bibtex file. I usually create this file from Zotero. See [here](http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html#bibliography_placement) for information about citation syntax in R Markdown.
