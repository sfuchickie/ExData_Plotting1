#
#
#  PLOT 4
#  Putting the plots together
#
#


png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px")
par(mfrow = c(2, 2))

# Top-left "Plot 2"

plot(subData$DateTime,subData$Global_active_power, 
     type="l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")

# Top-right "Plot 3"


plot(subData$DateTime, subData$Voltage,
     type = "l",
     ylab = "Voltage", xlab = "datetime")

# Bottom-left

plot(subData$DateTime, subData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subData$DateTime, subData$Sub_metering_2, col = "red")
lines(subData$DateTime, subData$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       lwd = 1, bty= "n" )

# Bottom-right

plot(subData$DateTime, subData$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(subData)[4])
dev.off()
