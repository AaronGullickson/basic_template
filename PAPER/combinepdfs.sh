#!/bin/bash

#this script will combine all of the parts of the paper into a full pdf
#change the name to link a different set of tables and figures

pdftk main.pdf addenda/tablesfigs.pdf addenda/appendix.pdf cat output fullmanuscript.pdf
