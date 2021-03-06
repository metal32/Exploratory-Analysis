library(dplyr)
data<-read.table("household_power_consumption.txt",sep=";",skip = 66637, nrows = 2880)
str(data)
Time<-strptime(paste(data$V1,data$V2,sep=""),"%d/%m/%Y %H:%M:%S")

plot(Time,data$V7,type="l", ylab="Energy Submetering", xlab="")
lines(Time,data$V8,type="l",col="red")
lines(Time,data$V9,type="l",col="blue")
legend("topright",col = c("black","red","blue"),legend=c("Submetering1","Submeterin2","Submetering3"),lty=1,lwd=2)

dev.copy(png,file="Plot3.png",width=480,height=480,units="px")
dev.off()