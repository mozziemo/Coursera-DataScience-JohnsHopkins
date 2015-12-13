## Exploratory Data Analysis Project 1
# plot1.png
library(data.table)
DT <- read.table(file = "./household_power_consumption.txt", 
                 header = TRUE, sep = ';', na.strings = "?", dec = '.', nrow=100000)
DT$DateTime <- strptime(paste(DT$Date,DT$Time), "%d/%m/%Y %H:%M:%S")
DT1 <- subset(DT, DT$DateTime >= "2007-02-01 00:00:00" 
              & DT$DateTime < "2007-02-03 00:00:00")

hist(DT1$Global_active_power, col="red",xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.copy(png, file="plot1.png")
dev.off() 
