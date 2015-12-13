## Exploratory Data Analysis Project 1
# plot3.png
library(data.table)
DT <- read.table(file = "./household_power_consumption.txt", 
                 header = TRUE, sep = ';', na.strings = "?", dec = '.', nrow=100000)
DT$DateTime <- strptime(paste(DT$Date,DT$Time), "%d/%m/%Y %H:%M:%S")
DT1 <- subset(DT, DT$DateTime >= "2007-02-01 00:00:00" 
              & DT$DateTime < "2007-02-03 00:00:00")


plot(DT1$DateTime, DT1$Sub_metering_1, type="l", xlab=" ",
     ylab="Energy sub metering")
lines(DT1$DateTime, DT1$Sub_metering_2, col="red")
lines(DT1$DateTime, DT1$Sub_metering_3, col="blue")

legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="plot3.png")
dev.off() 
