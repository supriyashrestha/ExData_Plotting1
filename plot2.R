path <- "C:/Users/supriya/Documents/Rtutorial/Exploratory_Data_Analysis/ExData_Plotting1/"

setwd(path)

#Read in text file

options(StringsAsFactors=FALSE)
powerdat = read.table("household_power_consumption.txt", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), sep=";", colClasses="character", na.strings ="?", skip=66637, nrows=2880)


#plot2

powerdat$DateTime <- paste(powerdat$Date, powerdat$Time, sep = " ")
powerdat$DateTime <-strptime(powerdat$DateTime, format="%d/%m/%Y %H:%M:%S")
powerdat$DateTime <- as.POSIXct(powerdat$DateTime)


png('plot2.png')
plot(powerdat$DateTime, powerdat$Global_active_power, xlab= "", ylab="Global Active Power (kilowatts)" , type="l")
dev.off()


