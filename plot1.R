setwd("~/Downloads/Bhuvana")
data<-read.table("household_power_consumption 2.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE)


#subset data
subsetdata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower<-as.numeric(subsetdata$Global_active_power)
png("plot.png",width = 480,height = 480)
hist(globalActivePower,col="red",main = "Global Active Power",xlab = "Global Active Power(killowatts)")
 dev.off()