# Coursera
# Course: Exploratory Data Analysis
# Course Project 1
# Plot 3

# Load utility function for loading and filtering
source("loaddata.R")

# Load the data
data <- loadData()
# Filter the data for the wanted dates
data <- filterDataByDate(data)

# Create plot function
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
png("plot3.png", width=480, height=480, bg="transparent")
# Draw a histogram
createPlot3()
# Close graphics device
dev.off()
