# Logs directory

This directory is used to store logs from any scripts that have been run. Given my increasing use of R Markdown to perform analysis, I do not use this directory that often now. It can be used to store stata logs. I do sometimes use it to store output from R scripts using the command:

```
rmarkdown::render("some_script.R",output_file="some_script.html",output_dir="logs")
```

This README will be removed when your run the `run_entire_project.sh`. It is assumed that you will not need to keep documentation on log files in this README.  