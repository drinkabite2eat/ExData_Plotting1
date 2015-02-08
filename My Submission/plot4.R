#Load the data
source("getData.R")
#Prepare the device
png(filename="plot4.png", width=480, height=480, units="px", bg="transparent")
#Layout the grid of four graphs
par(mfcol=c(2,2))
#Upper left graph
plot(days$DateTime, days$Global_active_power, type='l', xlab='', ylab='Global Active Power')
#Lower left graph
plot(days$DateTime, days$Sub_metering_1, type='l', col="black", xlab='', ylab='Energy sub metering')
#Add the other two series
lines(days$DateTime, days$Sub_metering_2, col='red')
lines(days$DateTime, days$Sub_metering_3, col='blue')
#Draw the legend
legend("topright", bty='n', col=c('black','red','blue'), c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1)
#Upper right graph
plot(days$DateTime, days$Voltage, type='l', xlab='datetime', ylab='Voltage')
#Lower right graph
plot(days$DateTime, days$Global_reactive_power, type='l', col='black',xlab='datetime', ylab=colnames(days)[4])
#As always, close the device
dev.off()