require(data.table)
require(lubridate)
require(dplyr)

read_data_subset <- function() {
    data <- fread(input = "household_power_consumption.txt", head = T, sep = ";", na.strings = "?")
    data %>% mutate(Date = dmy_hms(paste(Date, Time))) %>% select(-Time) %>%
        filter(Date >= ymd_hms("2007-02-01 00:00:00") & 
                   Date < ymd_hms("2007-02-03 00:00:00"))
}
