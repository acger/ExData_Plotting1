# Coursera
# Course: Exploratory Data Analysis
# Course Project 1
# Plot 4

# Load utility function for loading and filtering
source("loaddata.R")

# Load the data
data <- loadData()
# Filter the data for the wanted dates
data <- filterDataByDate(data)

# Create plot functions
createPlot2 <- function() {
    with(data, plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab = ""))
}

createPlot3 <- function() {
    with(data, {
        plot(DateTime, Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "n")
        lines(DateTime, Sub_metering_1, col = "black")
        lines(DateTime, Sub_metering_2, col = "red")
        lines(DateTime, Sub_metering_3, col = "blue")
        legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    })
}

# Set graphics device: PNG
png("plot4.png", width=480, height=480, bg="transparent")

# Set grid
par(mfrow = c(2, 2))

# Draw plots
createPlot2()
with(data, plot(DateTime, Voltage, type="l"))
createPlot3()
with(data, plot(DateTime, Global_reactive_power, type="l"))

# Close graphics device
dev.off()
