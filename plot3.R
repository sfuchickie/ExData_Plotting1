#
#
#  PLOT 3
#  Plotting
#  Our overall goal here is simply to examine how household energy usage 
#  varies over a 2-day period in February, 2007
#  using base graphics
#


graphics.off()

png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px")

plot(subData$DateTime, subData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subData$DateTime, subData$Sub_metering_2, col = "red")
lines(subData$DateTime, subData$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub metering 1", "Sub metering 2", "Sub metering 3"),
       lwd = 1)
dev.off()
