# Plot4 creation
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
source("LoadProjectData.R")

png(file="plot4.png", width=480, height=480)

#Plot 4
par(mfrow = c(2,2))
with(sampleData, {
  plot(x=recordDate, y=Global_active_power, type="l", ylab="Global Active Power", xlab="",lty=c(1,1))
  plot(x=recordDate, y=Voltage, type="l", ylab="Voltage", xlab="datetime",lty=c(1,1))
  plot(x=recordDate, y=Sub_metering_1, type="l", ylab="Energy sub meeting", xlab="", pch=NA_integer_)
  lines(x=recordDate, y=Sub_metering_2, type="l", col="red", pch=NA_integer_)
  lines(x=recordDate, y=Sub_metering_3, type="l", col="blue", pch=NA_integer_)
  legend("topright", bty="n", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1))
  plot(x=recordDate, y=Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime",lty=c(1,1))
})

dev.off()