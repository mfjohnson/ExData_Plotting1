data <- read.table("data/household_power_consumption.txt",header = T,sep = ";",quote = "",na.strings = "?")
## change the Date (only)
c <- as.Date(data$Date, format = "%d/%m/%Y")
data$Date <- c
## subset the data
data1 <- subset(data,Date=="2007-02-01" |Date=="2007-02-02")
## add a new colum (date.time)
data1$date.time = paste(data1$Date, data1$Time, sep=" ")
data1$date.time2 <- strptime(data1$date.time, format = "%d/%m/%Y %H:%M:%S")
##========================
png(file="plot4.png",width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
##======= plot 1 =========
with(data1,plot(date.time2,Global_active_power,type="n",ylab="Global Active Power",xlab=""))
with(data1,lines(date.time2,Global_active_power))

##======= plot 2 =========
with(data1,plot(date.time2,Voltage,type="n",ylab="Voltage",xlab="datetime"))
with(data1,lines(date.time2,Voltage))
##======= plot 3 =========
with(data1,plot(date.time2,Global_intensity,type="n",ylab="Energy sub metering",xlab="",ylim=c(0,38)))
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(2.5,2.5,2.5),col=c("black","blue","red"))
with(data1,lines(date.time2,Sub_metering_1))
with(data1,lines(date.time2,Sub_metering_2,col="red"))
with(data1,lines(date.time2,Sub_metering_3,col="blue"))
##======= plot 4 =========
with(data1,plot(date.time2,Global_reactive_power,type="n",ylab="Global_reactive_power",xlab="datetime"))
with(data1,lines(date.time2,Global_reactive_power))
##========================
dev.off()