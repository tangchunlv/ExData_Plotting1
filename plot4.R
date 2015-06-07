aaa <- read.table('household_power_consumption.txt', na.strings = "?",sep=';', header=TRUE)

plotdata <- aaa[aaa$Date == "1/2/2007" | aaa$Date == "2/2/2007", ]

par(mfrow=c(2,2), mar = c(4,4,2,1))

plot(plotdata$Time,
     plotdata$Global_active_power,
     xaxt="n",
     type="l",
     xlab="",
     
     
     ylab="Global Active Power (kilowatts)"
)


plot(plotdata$Time,
     plotdata$Voltage,
     xaxt="n",
     type="l",
     xlab="datetime",
     ylab="Voltage"
     
     
     
)

plot(plotdata$Time,
     plotdata$Sub_metering_1,
     xaxt="n",
     type="l",
     xlab="",
     
     
     ylab="Global Active Power (kilowatts)"
)

legend("topright", pch= 1, col= c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(plotdata$Time,
     plotdata$Global_reactive_power,
     xlab="datetime",
     ylab="Global_reactive_power"
)

dev.copy(png, filename="plot4.png", height=480, width=480)
dev.off()
