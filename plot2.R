## Exploratory Data Analysis Project 1
# plot2.png
library(data.table)
DT <- read.table(file = "./household_power_consumption.txt", 
                 header = TRUE, sep = ';', na.strings = "?", dec = '.', nrow=100000)
DT$DateTime <- strptime(paste(DT$Date,DT$Time), "%d/%m/%Y %H:%M:%S")
DT1 <- subset(DT, DT$DateTime >= "2007-02-01 00:00:00" 
              & DT$DateTime < "2007-02-03 00:00:00")


with(DT1, plot(DT1$DateTime, DT1$Global_active_power, type="l", xlab=" ",
               ylab="Global Active Power (kilowatts"))

dev.copy(png, file="plot2.png")
dev.off() 
