library(dplyr)
data<-read.table("household_power_consumption.txt",sep=";",skip = 66637, nrows = 2880)
str(data)
Time<-strptime(paste(data$V1,data$V2,sep=""),"%d/%m/%Y %H:%M:%S")
head(Time)
plot(Time, data$V3, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.copy(png,file="Plot2.png",width=480,height=480,units="px")
dev.off()