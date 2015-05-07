# Coursera
# Course: Exploratory Data Analysis
# Course Project 1
# Plot 2

# Load utility function for loading the data
source("loaddata.R")

# Load the data
data <- loaddata()

createPlot2 <- function() {
    with(data, plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab = ""))
}

# Set graphics device: PNG
png("plot2.png", width=480, height=480, bg="transparent")
# Draw plot
createPlot2()
# Close graphics device
dev.off()
