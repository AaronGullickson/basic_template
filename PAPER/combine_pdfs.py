#!/usr/bin/env python

#This script will combine the separate main paper with the tables 
#and figures and appendix PDFs to create a full_manuscript.pdf file. 
#To change the files that are combined, edit the 'pdfs=' line below. 

#The PyPDF2 python library must be installed on the system for this
#program to work. 

#I recommend running this from the command line as the "Run Script"
#option in RStudio cannot seem to find the PyPDF2 library even if 
#installed.

#basic code borrowed from answer 39 to this stack overflow queston
#https://stackoverflow.com/questions/3444645/merge-pdf-files

import sys
from PyPDF2 import PdfFileMerger

pdfs = ['main.pdf', 'addenda/tablesfigs.pdf', 'addenda/appendix.pdf']

merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('full_manuscript.pdf', 'wb') as fout:
    merger.write(fout)
