plot2 <- function(file="data/household_power_consumption.txt"){
  source("readData.R")
  all_data<-readData()
  png("plot2.png",width = 480, height = 480)
  plot(all_data$Time,all_data$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
}

