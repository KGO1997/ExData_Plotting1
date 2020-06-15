data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")
png("plot2.png", width = 480, height = 480)
data2<-filter(data, Date=="1/2/2007" | Date=="2/2/2007")
Sys.setlocale("LC_ALL", "English")
plot(as.POSIXct(paste(data2$Date, data2$Time), format="%d/%m/%Y %H:%M:%S"), data2$Global_active_power, 
     type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()