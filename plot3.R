data<-read.table("household_power_consumption 2.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE)

#subsetdata

subsetdata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
submetering1<-as.numeric(subsetdata$Sub_metering_1)
submetering2<-as.numeric(subsetdata$Sub_metering_2)
submetering3<-as.numeric(subsetdata$Sub_metering_3)
 
 png("plot3.png",width = 480,height = 480)

 plot(datetime,submetering1,type="l",xlab = " ",ylab = "Energy sub metering")
 lines(datetime,submetering2,col="red",type = "l")
 lines(datetime,submetering3,col="blue",type = "l")
 legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
 dev.off()