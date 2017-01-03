householdPower <- read.delim('./household_power_consumption.txt', sep = ";")
householdPower$Date <-  dmy(householdPower$Date)
householdPower$Time <- hms(householdPower$Time)
myDay1 <- ymd("2007-02-01")
myDay2 <- ymd("2007-02-02")
powerDays <- subset(householdPower, Date == myDay1 | Date == myDay2)
powerDays$Global_active_power<- as.numeric(as.character(powerDays$Global_active_power))
png(file = "plot1.png")
par(mfrow = c(1,1))
hist(powerDays$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()


