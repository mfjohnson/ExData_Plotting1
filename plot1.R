# Plot1 creation
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
source("LoadProjectData.R")

# Plot 1
png(file="plot1.png", width=480, height=480)
with(sampleData, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts", ylab="Frequency", main="Global Active Power"))
dev.off()