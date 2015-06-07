aaa <- read.table('household_power_consumption.txt', na.strings = "?",sep=';', header=TRUE)

plotdata <- aaa[aaa$Date == "1/2/2007" | aaa$Date == "2/2/2007", ]



plot(plotdata$Time,
     plotdata$Sub_metering_1,
     xaxt="n",
     type="l",
     xlab="",
     ylab="Energy sub metering"
     
     
)

points(plotdata$Time,
       plotdata$Sub_metering_2,
       col = "red"
       
)

points(plotdata$Time,
       plotdata$Sub_metering_3,
       col = "blue"
       
)

legend("topright", pch= 1, col= c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, filename="plot3.png", height=480, width=480)
dev.off()