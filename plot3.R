# Setting the working directory
setwd("~/Documents/R-WD/ExplDAWeek1Assignment/ExData_Plotting1")

# Reading in the full electric power consumption dataset
power <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

# Subsetting the full set to include only the required two days
power_sub <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")

# Plotting the 3 sub metering parameters in their respective colours
plot(power_sub$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt='n', xlab=' ', col="black")
lines(power_sub$Sub_metering_2, type="l", col="red")
lines(power_sub$Sub_metering_3, type="l", col="blue")

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Adding a colour legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col=c("black", "red", "blue"))

# Copying the plot over to a .png file 
dev.copy(png, "plot3.png", height=480, width=480)
dev.off()