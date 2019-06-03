# analysis directory

This is the main directory for the analysis. All of the scripts necessary to run the analysis are placed directly into this directory. All datasets should be placed in the `input` or `output` folder.

It is important to maintain a logical separation between raw data files that are acquired from elsewhere and serve as a basis for the project from constructed datasets that are created from the raw data by performing typical data manipulation routines (e.g. cleaning, recoding, aggregating, subsetting). All raw data should be kept in the `input` directory. All constructed datasets should be kept in the `output` directory. It should be possible to delete all files in the `output` directory and reproduce them exactly from data in the `input` directory via the constructed scripts.

Every analysis is different and may require a different set of scripts, but I provide here some simple baseline scripts that I typically use in my projects. They are:

- `check_packages.R` - You can put a list of all libraries used in any R script for the analysis and this script will check to make sure they are installed and if they are not installed it will attempt to install them.
- `useful_functions.R` - A script to keep track of R functions that might have uses across multiple scripts.
- `organize_data.R` - A script that will read in raw data, perform data manipulation, and output analytical dataset. In practice, projects often contain multiple scripts for this purpose depending on the complexity of the raw data.
- `analysis.Rmd` - I typically run the main analysis for the project in a single R Markdown file, output as HTML. This allows me to write a more detailed description of what I am doing and serves as a rough draft of the language that will ultimately go into the paper. The output file basically serves as a lab notebook and will contain a variety of analyses, only some of which will make it into the final paper. Sometimes I may split this into multiple Rmd files if I find that the quantity of analysis makes it slow to run this file.

In addition, I also include a shell script called `run_entire_project.sh` that will run the entire analysis from scratch. Keep in mind that this script will remove any HTML output and all files in the `logs` and `output` directories before attempting to re-run the scripts, in order to ensure that old output does not get mixed in with new output. As other scripts are added to the project, this shell script should be updated. Any user should be able to view this shell script and see how all the various scripts in this directory are used to reproduce the analysis.

I remove all identifying information from scripts and output in this directory so that I can share this information with reviewers through an anonymous link on [osf.io](https://osf.io). One good way to check and make sure that all names have been removed is to use the command line tool `grep` to search for names in all the documents. For example (from within the analysis directory):

```bash
grep -r Gullickson *
```

will search for any documents with the word "Gullickson" in them. 
