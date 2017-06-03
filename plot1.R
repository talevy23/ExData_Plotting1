plot1 <- function(file="data/household_power_consumption.txt"){
  source("readData.R")
  all_data<-readData()
  png("plot1.png",width = 480, height = 480)
  hist(all_data$Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
  dev.off()
}

