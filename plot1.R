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

##PNG1 file with a width of 480 pixels and a height of 480 pixels
dev.copy(png, file="plot1.png", width = 480, height = 480)
hist(dat$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()
