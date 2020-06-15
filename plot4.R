data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
png("plot4.png", width = 480, height = 480)
data4<-filter(data, Date=="1/2/2007" | Date=="2/2/2007")
Sys.setlocale("LC_ALL", "English")
par(mfrow=c(2,2))
plot(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Global_active_power, 
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Voltage, type="l",
     xlab="",ylab="Voltage")
plot(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Sub_metering_1, type = "l",
     col = "black",  ylab = "Energy sub metering",xlab="")
lines(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Sub_metering_2, col = "red",
      type = "l")
lines(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Sub_metering_3, col = "blue",
      type = "l")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red","blue"),
       lty = 1, cex=0.8)
plot(as.POSIXct(paste(data4$Date, data4$Time), format="%d/%m/%Y %H:%M:%S"), data4$Global_reactive_power , 
     type="l",xlab="",ylab="Global_reactive_power")
dev.off()