## This script plots the heterozygosity across all samples, based off of SNP genotypes.
## Heterozygosity is calculated for each sample by Axiom Analysis Suite.

## As per Larsen et al. 2018 (https://doi.org/10.1371/journal.pone.0201889), this can be a diagnostic feature to distinguish diploid from triploid apples. 


# Set Input/Output Paths --------------------------------------------------

#Set input directory for .txt file with heterozygosity information
HetFile <- "C:/Users/curly/Desktop/Apple Genotyping/Results/Heterozygosity Histogram/Heterozygosity_Data1.txt"

#Set output directory for saving histogram as a PNG
HetPNG <- "C:/Users/curly/Desktop/Apple Genotyping/Results/Heterozygosity Histogram/Heterozygosity_Count2.png"




# Load Data ---------------------------------------------------------------

data <- read.delim(HetFile, header=TRUE)
het <- data$het_rate




# Plot and Save Heterozygosity Histogram ----------------------------------

png(filename = HetPNG, width = 500, height = 800)
par(mar = c(7,5,5,1))
hist(het, breaks = 30, xlim = c(0.15,0.45), main = "Heterozygosity by Individual", xlab = "Total heterozygosity by individual", ylab = "Count", cex.main=2,cex.lab= 1.85,cex.axis=1.75, mgp = c(3,1,0))

dev.off()
