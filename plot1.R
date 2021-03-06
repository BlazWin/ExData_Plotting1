source("read_data_subset.R")

data <- read_data_subset()

png("plot1.png")
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power")
dev.off()