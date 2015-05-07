# Coursera
# Course: Exploratory Data Analysis
# Course Project 1
# Plot 1

# Load utility function for loading the data
source("loaddata.R")

# Load the data
data <- loaddata()

createPlot1 <- function() {
    hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
}

# Set graphics device: PNG
png('plot1.png', width=480, height=480, bg='transparent')
# Draw a histogram
createPlot1()
# Close graphics device
dev.off()
