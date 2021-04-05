getwd() 
setwd("/Users/sashasmac/Downloads")
data <- "/Users/sashasmac/Downloads/project_1_dta.txt"
consumption_data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
subset2007 <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007") ,] 
global_active_power <- as.numeric(subset2007$Global_active_power) 
png("plot1.png", width=480, height=480) 
hist(global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


data <- "/Users/sashasmac/Downloads/project_1_dta.txt"
consumption_data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset2007 <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
datetime <- strptime(paste(subset2007$Date, subset2007$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset2007$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 

data <- "/Users/sashasmac/Downloads/project_1_dta.txt"
consumption_data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset2007 <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
datetime <- strptime(paste(subset2007$Date, subset2007$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset2007$Global_active_power)
subMetering1 <- as.numeric(subset2007$Sub_metering_1)
subMetering2 <- as.numeric(subset2007$Sub_metering_2)
subMetering3 <- as.numeric(subset2007$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

data <- "/Users/sashasmac/Downloads/project_1_dta.txt"
consumption_data <- read.table(data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset2007 <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
datetime <- strptime(paste(subset2007$Date, subset2007$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset2007$Global_active_power)
globalReactivePower <- as.numeric(subset2007$Global_reactive_power)
voltage <- as.numeric(subset2007$Voltage)
subMetering1 <- as.numeric(subset2007$Sub_metering_1)
subMetering2 <- as.numeric(subset2007$Sub_metering_2)
subMetering3 <- as.numeric(subset2007$Sub_metering_3)
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off() 



