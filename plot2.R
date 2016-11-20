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

##PNG2 file
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
plot(dat$DateTime, dat$Global_active_power, ylab = 'Global Active Power (kilowatt)', type='1')
dev.off()
