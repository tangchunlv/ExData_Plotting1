house <- read.table('household_power_consumption.txt',sep=';', na.strings='?', header=TRUE)

plotdata <- house[house$Date=="1/2/2007" | house$Date=="2/2/2007", ]

#put date and time together

datatime <- paste(as.Date(plotdata$Date,format="%d/%m/%Y"), plotdata$Time)
plotdata$Datetime <- as.POSIXct(datatime,tz="UTC")

plot(plotdata$Datetime, plotdata$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")

lines(plotdata$Datetime, plotdata$Sub_metering_1)
lines(plotdata$Datetime, plotdata$Sub_metering_2, col="red")
lines(plotdata$Datetime, plotdata$Sub_metering_3, col="blue")

legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, filename="Plot3.PNG", width=480, height=480)
dev.off