
## Plot 4 
hpc <- read.table("household_power_consumption.txt",sep=";", header = TRUE)
hpc_2_1_2_2_2007 <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(file="C:/Users/Erich/Documents/Data Science Specialization/Exploratory Data Analysis/plot4.png",width=480,height=480)
par(mfrow=c(2,2), mar = c(5,4,4,4))
plot(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"), as.numeric(hpc_2_1_2_2_2007$Global_active_power)/500, type="l", xlab="" ,ylab="Global Active Power(kilowatts)",cex=0.5)
plot(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"), as.numeric(as.character.factor(hpc_2_1_2_2_2007$Voltage)), type="l", xlab="datetime" ,ylab="Voltage")
plot(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(as.character.factor(hpc_2_1_2_2_2007$Sub_metering_1)), type="l", xlab="",ylab="Energy sub metering",col="black")
lines(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(hpc_2_1_2_2_2007$Sub_metering_3),col="blue")
lines(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(as.character.factor(hpc_2_1_2_2_2007$Sub_metering_2)),col="red")
legend("topright",NULL,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=1,bty="n",cex=0.75)
plot(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"), as.numeric(hpc_2_1_2_2_2007$Global_reactive_power)/500, type="l", xlab="datetime" ,ylab="Global_ reactive_power", ylim=c(0.0,0.5))
dev.off()