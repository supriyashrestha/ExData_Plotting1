path <- "C:/Users/supriya/Documents/Rtutorial/Exploratory_Data_Analysis/"

setwd(path)

#Read in text file

options(StringsAsFactors=FALSE)
powerdat = read.table("household_power_consumption.txt", col.names = colnames(read.table("household_power_consumption.txt", nrow = 1,   header = TRUE, sep=";")), sep=";", colClasses="character", na.strings ="?", skip=66637, nrows=2880)


path <- "C:/Users/supriya/Documents/Rtutorial/Exploratory_Data_Analysis/ExData_Plotting1/"

setwd(path)

#plot 1

powerdat$Global_active_power <- as.numeric(powerdat$Global_active_power)
png('plot1.png')
hist(powerdat$Global_active_power, col="red", xlab= "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

