source("read_data_subset.R")

data <- read_data_subset()

png("plot4.png")
par(mfrow = c(2, 2))
with(data, {
    # top left plot
    plot(Date, Global_active_power, type = "l", 
         ylab = "Global Active Power (kilowatts)", xlab = NA)
    # top right plot
    plot(Date, Voltage, type = "l", 
         ylab = "Voltage", xlab = "datetime")
    # bottom left plot
    plot(Date, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = NA)
    lines(Date, Sub_metering_2, col = "red")
    lines(Date, Sub_metering_3, col = "blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"), lty = 1, bty = "n")
    # bottom right plot
    plot(Date, Global_reactive_power, type = "l", 
         ylab = "Global_reactive_power", xlab = "datetime")
})
par(mfrow = c(1, 1))
dev.off()