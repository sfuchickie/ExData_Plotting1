#
#
#
#
#  Project 1
#  Dates: 2007-02-01 and 2007-02-02
#
#
#

getwd()
setwd("/Users/Saida/Desktop/Coursera/ExploratoryProject1/ExData_Plotting1")
list.files()

data         <- read.csv2("power.txt", sep=";",dec=",",header=TRUE, stringsAsFactors = FALSE)
str(data)


# Convert the dates to R date values
data$myDate <- as.Date(data$Date, "%d/%m/%Y")
sum(is.na(data$myDate))
data$myDate[1:10]

# Subset for the Date of interest
subData <- subset(data, myDate >= "2007-02-01" & myDate <= "2007-02-02")
subData$myDate[1:10]

rm(data)
str(subData)

# Convert the Time
subData$myTime[ subData$Time=='?'] <- "NA"

subData$myTime <- as.POSIXct(subData$Time, format="%H:%M:%S")
sum(is.na(subData$myTime))

str(subData$myTime)
subData$DateTime <- as.POSIXct(paste(subData$Date," ",subData$Time), format="%d/%m/%Y %H:%M", tz="UTC")


# Deal with missing data coded as '?'

subData['?' %in% subData] <- NA
names(subData)
subData$Global_active_power <- as.numeric(subData$Global_active_power)
subData$Sub_metering_1 <- as.numeric(subData$Sub_metering_1)
subData$Sub_metering_2 <- as.numeric(subData$Sub_metering_2)
subData$Sub_metering_3 <- as.numeric(subData$Sub_metering_3)
subData$Voltage <- as.numeric(subData$Voltage)

