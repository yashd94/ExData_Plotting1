# Setting the working directory
setwd("~/Documents/R-WD/ExplDAWeek1Assignment/ExData_Plotting1")

# Reading in the full electric power consumption dataset
power <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

# Subsetting the full set to include only the required two days
power_sub <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")

# Plotting a line graph of the global active power with no default x-axis values
plot(power_sub$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xaxt='n', xlab=' ')

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Copying the plot over to a .png file 
dev.copy(png, "plot2.png", height=480, width=480)
dev.off()