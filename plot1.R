source("clean_data.R")
png("plot1.png", width = 480, height = 480)
hist(consumption$Global_active_power, xlab = "Global Active Power (kilowatts)",
     col = "red", main = "Global Active Power")
dev.off()