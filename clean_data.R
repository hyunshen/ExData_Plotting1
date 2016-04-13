df <- read.table("../household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
consumption <- subset(df, Date == "1/2/2007" | Date == "2/2/2007")
consumption$DateTime <- paste(consumption$Date, consumption$Time)
consumption$DateTime <- strptime(consumption$DateTime, format = "%d/%m/%Y %H:%M:%S")