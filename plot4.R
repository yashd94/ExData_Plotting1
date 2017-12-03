# Setting the working directory
setwd("~/Documents/R-WD/ExplDAWeek1Assignment/ExData_Plotting1")

# Reading in the full electric power consumption dataset
power <- read.delim("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")

# Subsetting the full set to include only the required two days
power_sub <- subset(power, Date=="1/2/2007" | Date=="2/2/2007")

# Setting graphical parameters
par(mfrow=c(2,2))

# Plotting a line graph of the global active power with no default x-axis values
plot(power_sub$Global_active_power, type="l", ylab="Global Active Power", xaxt='n', xlab=' ')

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Plotting a line graph of the voltage with no default x-axis values
plot(power_sub$Global_active_power, type="l", ylab="Voltage", xaxt='n', xlab='datetime')

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Plotting the 3 sub metering parameters in their respective colours
plot(power_sub$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt='n', xlab=' ', col="black")
lines(power_sub$Sub_metering_2, type="l", col="red")
lines(power_sub$Sub_metering_3, type="l", col="blue")

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Adding a colour legend (without a box)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col=c("black", "red", "blue"), bty='n', cex=0.5)

# Plotting a line graph of the global reactive power with no default x-axis values
plot(power_sub$Global_reactive_power, type="l", ylab="Global_reactive_power", xaxt='n', xlab='datetime')

# Adding custom x-axis labels
axis(side=1, at=c(0, 1500, 2875), labels=c("Thu", "Fri", "Sat"))

# Copying the plot over to a .png file 
dev.copy(png, "plot4.png", height=480, width=480)
dev.off()
