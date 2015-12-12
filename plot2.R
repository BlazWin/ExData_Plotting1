source("read_data_subset.R")

data <- read_data_subset()

png("plot2.png")
with(data, plot(Date, Global_active_power, type = "l", 
                ylab = "Global Active Power (kilowatts)", xlab = NA))
dev.off()