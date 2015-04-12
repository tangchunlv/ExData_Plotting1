
aaa <- read.table('household_power_consumption.txt', na.strings = "?",sep=';', header=TRUE)

plotdata <- aaa[aaa$Date == "1/2/2007" | aaa$Date == "2/2/2007", ]

png(filename="plot1.png", height=480, width=480, units='px')
hist(plotdata$Global_active_power, main="Global Active Power", col="red", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()