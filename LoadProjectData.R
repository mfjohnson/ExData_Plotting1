# Exploratory Data Analysis
#   Course Project #1
#   Author: Mark Johnson
setwd("~/R_Coursera_Course/ExploratoryDatanAnalysis")
electric <- read.csv("data/household_power_consumption.txt",header = TRUE, sep=";", colClasses = "character")
electric$tmp <- paste(electric$Date, electric$Time, sep=" ")
electric$recordDate <- strptime(electric$tmp,format="%d/%m/%Y %H:%M:%S")

electric$Global_reactive_power <- ifelse(electric$Global_reactive_power=='?',NA, as.numeric(electric$Global_reactive_power))
electric$Global_active_power <- ifelse(electric$Global_active_power=='?', NA, as.numeric(electric$Global_active_power))
electric$Voltage <- ifelse(electric$Voltage=='?',NA, as.numeric(electric$Voltage))
electric$Global_intensity <- ifelse(electric$Global_intensity=='?', NA, as.numeric(electric$Global_intensity))
electric$Sub_metering_1 <- ifelse(electric$Sub_metering_1=='?', NA, as.numeric(electric$Sub_metering_1))
electric$Sub_metering_2 <- ifelse(electric$Sub_metering_2=='?', NA, as.numeric(electric$Sub_metering_2))
electric$Sub_metering_3 <- ifelse(electric$Sub_metering_3=='?', NA, as.numeric(electric$Sub_metering_3))

sampleData <- subset(electric, electric$recordDate >= as.POSIXct("02/01/2007", format="%m/%d/%Y") & electric$recordDate < as.POSIXct("02/03/2007", format="%m/%d/%Y"))


