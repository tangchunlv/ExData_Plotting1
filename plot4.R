house <- read.table('household_power_consumption.txt',sep=';', na.strings='?', header=TRUE)

plotdata <- house[house$Date=="1/2/2007" | house$Date=="2/2/2007", ]

#put date and time together

datatime <- paste(as.Date(plotdata$Date,format="%d/%m/%Y"), plotdata$Time)
plotdata$Datetime <- as.POSIXct(datatime,tz="UTC")

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

#1st
plot(plotdata$Datetime, plotdata$Global_active_power, xlab="", ylab= "Global Active Power", type = "l")

#2nd
plot(plotdata$Datetime, plotdata$Voltage, xlab="datetime", ylab= "Voltage", type = "l")

#3rd
plot(plotdata$Datetime, plotdata$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")

lines(plotdata$Datetime, plotdata$Sub_metering_1)
lines(plotdata$Datetime, plotdata$Sub_metering_2, col="red")
lines(plotdata$Datetime, plotdata$Sub_metering_3, col="blue")

legend("topright", lty=1, bty="n", col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


#4th
plot(plotdata$Datetime, plotdata$Global_reactive_power, xlab="datetime", ylab= "Global_reactive_power", type = "l")
dev.copy(png, filename="Plot4.PNG", width=480, height=480)
dev.off