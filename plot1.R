## Plot 1 
hpc <- read.table("household_power_consumption.txt",sep=";", header = TRUE)
hpc_2_1_2_2_2007 <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
png(file="C:/Users/Erich/Documents/Data Science Specialization/Exploratory Data Analysis/plot1.png",width=480,height=480)
hist(as.numeric(hpc_2_1_2_2_2007$Global_active_power)/500, col="red", main="Global Active Power", xlab="Global Active Power(Kilowatts)", ylab="Frequency",cex=0.75)
dev.off()