source("clean_data.R")
png("plot3.png", width = 480, height = 480)
with(consumption, plot(DateTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
with(consumption, points(DateTime, Sub_metering_2, type = "l", col = "red"))
with(consumption, points(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off()