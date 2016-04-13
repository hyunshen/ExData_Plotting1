source("clean_data.R")
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
with(consumption, {
    plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
    plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Valtage")
    plot(DateTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l")
    points(DateTime, Sub_metering_2, type = "l", col = "red")
    points(DateTime, Sub_metering_3, type = "l", col = "blue")
    legend("topright", col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
    plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime")
    })
#with(consumption, plot(DateTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
#with(consumption, points(DateTime, Sub_metering_2, type = "l", col = "red"))
#with(consumption, points(DateTime, Sub_metering_3, type = "l", col = "blue"))
#legend("topright", col = c("black", "red", "blue"), 
#       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
#with(consumption, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))
dev.off()


