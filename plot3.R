source("read_data_subset.R")

data <- read_data_subset()

png("plot3.png")
with(data, {
    plot(Date, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = NA)
    lines(Date, Sub_metering_2, col = "red")
    lines(Date, Sub_metering_3, col = "blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           col = c("black", "red", "blue"), lty = 1)
})
dev.off()