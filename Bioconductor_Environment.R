# Check if BiocManager is installed 
if (!require("BiocManager", quietly = TRUE)) install.packages("BiocManager")

# List of required Bioconductor packages
required_packages <- c("Rqc", "fastqcr", "QuasR", "ShortRead", "ggplot2")

# Install missing packages
BiocManager::install(setdiff(required_packages, installed.packages()[,"Package"]))

# Load libraries to confirm installation
library(Rqc) 
library(fastqcr) 
library(QuasR) 
library(ShortRead) 
library(ggplot2)
print("All Bioconductor packages loaded successfully!")
