data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
png("plot3.png", width = 480, height = 480)
data3<-filter(data, Date=="1/2/2007" | Date=="2/2/2007")
Sys.setlocale("LC_ALL", "English")
plot(as.POSIXct(paste(data3$Date, data3$Time), format="%d/%m/%Y %H:%M:%S"), data3$Sub_metering_1, type = "l",
     col = "black",  ylab = "Energy sub metering",xlab="")
lines(as.POSIXct(paste(data3$Date, data3$Time), format="%d/%m/%Y %H:%M:%S"), data3$Sub_metering_2, col = "red",
      type = "l")
lines(as.POSIXct(paste(data3$Date, data3$Time), format="%d/%m/%Y %H:%M:%S"), data3$Sub_metering_3, col = "blue",
      type = "l")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c("black", "red","blue"),
       lty = 1, cex=0.8)
dev.off() 