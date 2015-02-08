#Load the data
source("getData.R")
#Prepare the device for the plot
png(filename="plot1.png", width=480, height=480, units="px", bg="transparent")
#Make the plot
hist(days$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", breaks=12, ylim=c(0,1200))
#Close the device
dev.off()