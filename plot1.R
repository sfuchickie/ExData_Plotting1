#
#
#  PLOT 1
#  Plotting
#  Our overall goal here is simply to examine how household energy usage 
#  varies over a 2-day period in February, 2007
#  using base graphics
#
dev.off()
graphics.off()

# Another way to do this is to attach the dataframe to avoid using $
# I think it's bad practice in case global environment has names 
# floating around that may confuse attach()

subData$Global_active_power <- as.numeric(subData$Global_active_power)
png("plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

hist(subData$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
getwd()

