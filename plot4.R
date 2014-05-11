path <- "C:/Users/supriya/Documents/Rtutorial/Exploratory_Data_Analysis/"

setwd(path)

#Read in text file

options(StringsAsFactors=FALSE)
powerdat = read.table("household_power_consumption.txt", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), sep=";", colClasses="character", na.strings ="?", skip=66637, nrows=2880)


path <- "C:/Users/supriya/Documents/Rtutorial/Exploratory_Data_Analysis/ExData_Plotting1/"

setwd(path)

powerdat$Global_active_power <- as.numeric(powerdat$Global_active_power)
powerdat$DateTime <- paste(powerdat$Date, powerdat$Time, sep = " ")
powerdat$DateTime <-strptime(powerdat$DateTime, format="%d/%m/%Y %H:%M:%S")
powerdat$DateTime <- as.POSIXct(powerdat$DateTime)

powerdat$Sub_metering_1 <- as.numeric(powerdat$Sub_metering_1)
powerdat$Sub_metering_2 <- as.numeric(powerdat$Sub_metering_2)
powerdat$Sub_metering_3 <- as.numeric(powerdat$Sub_metering_3)


par(mfcol=c(2,2))

plot(powerdat$DateTime, powerdat$Global_active_power, xlab= "", ylab="Global Active Power (kilowatts)" , type="l")

plot(powerdat$DateTime, powerdat$Sub_metering_1,  xlab= "", ylab = "Energy sub metering" , type="l")
lines(powerdat$DateTime, powerdat$Sub_metering_2, type="l", col="red")
lines(powerdat$DateTime, powerdat$Sub_metering_3 , type="l", col="blue")

plot(powerdat$DateTime, powerdat$Voltage, xlab= "datetime", ylab="Voltage" , type="l")

plot(powerdat$DateTime, powerdat$Global_reactive_power, xlab= "datetime", ylab="Global_reactive_power" , type="l")


dev.off()

