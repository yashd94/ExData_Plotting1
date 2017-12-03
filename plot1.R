# Setting the working directory
setwd("~/Documents/R-WD/ExplDAWeek1Assignment/ExData_Plotting1")

# Reading in the full electric power consumption dataset
power <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

# Subsetting the full set to include only the required two days
power_sub <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")

# Plotting the global active power on a histogram and labelling
hist(power_sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Copying the plot over to a .png file 
dev.copy(png, "plot1.png", height=480, width=480)
dev.off()