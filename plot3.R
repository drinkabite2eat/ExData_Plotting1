#Load the data
source("getData.R")
#Prepare the device
png(filename="plot3.png", width=480, height=480, units="px", bg="transparent")
#Make the initial plot
plot(days$DateTime, days$Sub_metering_1, type="l", col="black", xlab="",ylab="Energy sub metering")
#Add the lines for the other two series
lines(days$DateTime, days$Sub_metering_2, col="red")
lines(days$DateTime, days$Sub_metering_3, col="blue")
#Create a legend
legend("topright", col=c("black","red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1)
#Close the device
dev.off()