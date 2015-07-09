house <- read.table('household_power_consumption.txt',sep=';', na.strings='?', header=TRUE)

plotdata <- house[house$Date=="1/2/2007" | house$Date=="2/2/2007", ]

hist(plotdata$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")

dev.copy(png, filename="Plot1.PNG", width=480, height=480)
dev.off