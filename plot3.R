##loading the data into R
setwd("C:\\Users\\yw2803\\Downloads")
my=read.table("household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE, nrows=2075259, na.strings = "?")
data=data.frame(my)
dim(data)
head(data)

##convert Date variables to Date class
data$Date=as.Date(data$Date, format ='%d/%m/%Y')

##subset data from the dates 2007-02-01 and 2007-02-02
dat<- subset(data, (data$Date == "2007-02-01")| (data$Date =="2007-02-02"))
##PNG3 file
plot(dat$DateTime, dat$Sub_metering_1, col="black", type="1", ylab="Energy sub metering")
lines(dat$DateTime, dat$Sub_metering_2, col ="red")
lines(dat$DateTime, dat$Sub_metering_3, col="blue")
legend("topright",col=c("black", "red", "blue"), lty=1, lwd=2, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()