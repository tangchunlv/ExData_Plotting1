aaa <- read.table('household_power_consumption.txt', na.strings = "?",sep=';', header=TRUE)

plotdata <- aaa[aaa$Date == "1/2/2007" | aaa$Date == "2/2/2007", ]



plot(plotdata$Time,
     plotdata$Global_active_power,
     xaxt="n",
     type="l",
     xlab="",
     
    
     ylab="Global Active Power (kilowatts)"
)
dev.copy(png, filename="plot2.png", height=480, width=480)
dev.off()


