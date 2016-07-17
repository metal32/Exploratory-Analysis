library(dplyr)
data<-read.table("household_power_consumption.txt",sep=";",skip = 66637, nrows = 2880)
str(data)
data<-rename(data,Date=V1,Time=V2,Global_Active_Power=V3)
data1<-select(data,Global_Active_Power)
hist(data1$Global_Active_Power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")
dev.copy(png,file="Plot1.png",width=480,height=480,units="px")
dev.off()
