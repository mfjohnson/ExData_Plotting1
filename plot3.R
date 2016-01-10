# Plot3 creation
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
source("LoadProjectData.R")

png(file="plot3.png", width=480, height=480)
with(a, {
  plot(x=recordDate, y=Sub_metering_1, type="l", ylab="Energy sub meeting", xlab="")
  lines(x=recordDate, y=Sub_metering_2, type="l", col="red")
  lines(x=recordDate, y=Sub_metering_3, type="l", col="blue")
  legend("topright", pch=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})
dev.off()