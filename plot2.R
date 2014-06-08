## Plot 2
hpc <- read.table("household_power_consumption.txt",sep=";", header = TRUE)
hpc_2_1_2_2_2007 <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(file="C:/Users/Erich/Documents/Data Science Specialization/Exploratory Data Analysis/plot2.png",width=480,height=480)
plot(strptime(paste(hpc_2_1_2_2_2007$Date,hpc_2_1_2_2_2007$Time),"%d/%m/%Y %H:%M:%S"), as.numeric(hpc_2_1_2_2_2007$Global_active_power)/500, type="l", xlab="" ,ylab="Global Active Power(kilowatts)")
dev.off()