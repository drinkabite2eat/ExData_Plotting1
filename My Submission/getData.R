#Assumes the file is in the current working directory
file <- "household_power_consumption.txt"
#Open the file
data <- read.table(file, header=TRUE, sep=";",na.strings="?")
#Subset to just the days of interest
days <- subset(data, data$Date=='1/2/2007' | data$Date=='2/2/2007')
#Clear the rest of the data
rm(data)
#Create a temporary concatentation of the Date and Time columns
temp <- paste(days$Date, days$Time)
#Add that datetime combo to the dataframe, and properly format it
days$DateTime <- strptime(temp, '%d/%m/%Y %H:%M:%S')
#Clean up the temporary variable
rm(temp)
#And that's it, data is ready to use
attach(days)