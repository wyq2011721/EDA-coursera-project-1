##PNG4 file
par(mfrow=c(2,2), mar=c(4,4,2,1))
with(dat,{
  plot(DateTime, Global_active_power, ylab = 'Global Active Power', type='1')
  plot(datetime, Voltage, ylab="Voltage", xlab="datetime")
  plot(dat$DateTime, dat$Sub_metering_1, col="black", type="1", ylab="Energy sub metering")
  lines(dat$DateTime, dat$Sub_metering_2, col ="red")
  lines(dat$DateTime, dat$Sub_metering_3, col="blue")
  legend("topright",col=c("black", "red", "blue"), lty=1, lwd=2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(DateTime, Global_reactive_power, ylab = 'Global Active Power', type='1')
})
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()