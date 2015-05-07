
# Provide utility function for loading an filtering the data
loaddata <- function() {
    # Set file name
    fileName <- "data/household_power_consumption.txt"
    
    # Load data
    data <- read.csv(fileName, header = TRUE, sep = ";", na.string = "?", stringsAsFactors = FALSE)
    
    # Copy selected rows to new data frame
    filtered_data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007", ]
    
    # Convert date/time strings
    filtered_data$DateTime <- strptime(paste(filtered_data$Date, filtered_data$Time), format = "%d/%m/%Y %H:%M:%S")
    
    # return data frame
    filtered_data
}