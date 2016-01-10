# Plot2 creation
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
source("LoadProjectData.R")

png(file="plot2.png", width=480, height=480)
with(a, plot(x=recordDate, y=Global_active_power,type="l", ylab = "Global Active Power (kilowatts)"))     
dev.off()

