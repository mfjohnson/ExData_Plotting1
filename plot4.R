# Plot4 creation
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
#source("LoadProjectData.R")

png(file="plot4.png", width=480, height=480)

#Plot 4
par(mfrow = c(2,2))
with(sampleData, {
  plot(x=recordDate, y=Global_active_power, type="l", ylab="Global Active Power", xlab="")
  plot(x=recordDate, y=Voltage, type="l", ylab="Voltage", xlab="datetime")
  plot(x=recordDate, y=Sub_metering_1, type="l", ylab="Energy sub meeting", xlab="")
  lines(x=recordDate, y=Sub_metering_2, type="l", col="red")
  lines(x=recordDate, y=Sub_metering_3, type="l", col="blue")
  legend("topright", pch=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(x=recordDate, y=Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
})

dev.off()