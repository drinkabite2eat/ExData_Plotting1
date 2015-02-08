#Load the data
source("getData.R")
#Prepare the device
png(filename="plot2.png", width=480, height=480, units="px", bg="transparent")
#Make the plot
plot(days$DateTime, days$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#Close the device
dev.off()