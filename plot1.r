x<-read.table("exdata_data_household_power_consumption/household_power_consumption.txt",sep = ";",header = TRUE)
x$Date<-as.Date(x$Date,"%d/%m/%Y")
y<-x[((x$Date=="2007-02-01")|(x$Date=="2007-02-02")),]
par(mar=c(4,4,2,1),cex.lab=0.8,cex.axis=0.8)
hist(as.numeric(as.character(y$Global_active_power)),main="Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()