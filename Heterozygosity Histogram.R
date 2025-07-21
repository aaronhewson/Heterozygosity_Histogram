## This script produces a histogram of the heterozygosity by individual of the accessions from the JD and PFR collections that were SNP genotyped for this project
## As per Larsen et al. 2018, this can be a diagnostic feature to distinguish diploid from triploid apples. 

##Plot a histogram of the count of individual heterozygosity

#Set input directory for .txt file with heterozygosity information
HetFile <- "C:/Users/curly/Desktop/Apple Genotyping/Results/Heterozygosity Histogram/Heterozygosity_Data.txt"

#Set output directory for saving histogram as a PNG
HetPNG <- "C:/Users/curly/Desktop/Apple Genotyping/Results/Heterozygosity Histogram/Heterozygosity_Count.png"

#Read data
data <- read.delim(HetFile, header=TRUE)
het <- data$het_rate

#Plot histogram and export as PNG

png(filename = HetPNG, width = 1000, height = 800)
par(mar = c(7,5,5,1))
hist(het, breaks = 30, xlim = c(0.15,0.45), main = "Heterozygosity by Individual", xlab = "Total heterozygosity by individual", ylab = "Count", cex.main=2,cex.lab= 1.85,cex.axis=1.75, mgp = c(3,1,0))

dev.off()
