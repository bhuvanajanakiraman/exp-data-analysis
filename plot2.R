
data<-read.table("household_power_consumption 2.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE)

#subsetdata

subsetdata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower<-as.numeric(subsetdata$Global_active_power)

# paste datetime

datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png",width=480,height = 480)
plot(datetime,globalActivePower, type = "1",xlab = " ",ylab = "Global Active power(kilowatts)")
dev.off()