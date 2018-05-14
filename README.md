# Research Project Template

Aaron Gullickson

This is my starting template for a research project, designed for [plain text science](https://kieranhealy.org/publications/plain-person-text/). This template assumes the analysis is primarily powered by [R](https://www.r-project.org/) and [R Markdown](http://rmarkdown.rstudio.com/), but is flexible enough to incorporate other programs. The structure and organization is heavily influenced by the ideas from [Code and Data for the Social Sciences: A Practitioner's Guide](https://web.stanford.edu/~gentzkow/research/CodeAndData.xhtml) by Matthew Gentzkow and Jesse M. Shapiro. Each directory in this repository contains a README detailing organizational principles. It is assumed that these READMEs will be overwritten with project specific information when this template is used as a starter for a project. 

At the top level, I divide my project into an `analysis` directory which contains all of the raw input data, constructed data, and scripts to perform the analysis and a `products` directory which contains all the R Markdown or LaTeX files and associated resources necessary to produce papers and presentations. I separate these two aspects of the research project because it is assumed that the paper will only contain a subset of the full analysis and I may spend more time at this stage to clean up and prettify tables and figures than for the actual analysis. 

To start a new project from this template, copy and paste contents to a new directory, or clone, and remove the .git directory.
