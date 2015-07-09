house <- read.table('household_power_consumption.txt',sep=';', na.strings='?', header=TRUE)

plotdata <- house[house$Date=="1/2/2007" | house$Date=="2/2/2007", ]

#put date and time together

datatime <- paste(as.Date(plotdata$Date,format="%d/%m/%Y"), plotdata$Time)
plotdata$Datetime <- as.POSIXct(datatime,tz="UTC")

plot(plotdata$Datetime, plotdata$Global_active_power, xlab="", ylab= "Global Active Power (kilowatts)", type = "l")

dev.copy(png, filename="Plot2.PNG", width=480, height=480)
dev.off