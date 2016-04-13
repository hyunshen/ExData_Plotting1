source("clean_data.R")
png("plot2.png", width = 480, height = 480)
plot(consumption$DateTime, consumption$Global_active_power, 
     xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()