plot3 <- function(file="data/household_power_consumption.txt"){
  source("readData.R")
  all_data<-readData()
  ## colors and titles as strings
  colors <- c("black","red","blue")
  titles<- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
  png("plot3.png",width = 480, height = 480)
  with(all_data,plot(Time,Sub_metering_1,type = "l",col = colors[1], ylab = "Energy sub metering", xlab = ""))
  with(all_data,points(Time,Sub_metering_2,type = "l",col = colors[2]))
  with(all_data,points(Time,Sub_metering_3,type = "l",col = colors[3]))
  legend("topright", lty = 1,col= colors,legend=titles)
  dev.off()
}

