#
#
#  PLOT 2
#  Plotting
#  Our overall goal here is simply to examine how household energy usage 
#  varies over a 2-day period in February, 2007
#  using base graphics
#

graphics.off()   #I was having issues with R, it simply wouldn't plot
                 # anything! This fixed the issue whatever it was.

subData$Global_active_power <- as.number(subData$Global_active_power)
png("plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")


plot(subData$DateTime,subData$Global_active_power, 
     type="l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")
