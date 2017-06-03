plot4 <- function(file="data/household_power_consumption.txt"){
  source("readData.R")
  all_data<-readData()
  png("plot4.png",width = 480, height = 480)
  
  par(mfcol=c(2,2))
  # plot2()
  plot(all_data$Time,all_data$Global_active_power,type = "l",ylab = "Global Active Power", xlab = "")
  # plot3()
  colors <- c("black","red","blue")
  titles<- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
  with(all_data,plot(Time,Sub_metering_1,type = "l",col = colors[1], ylab = "Energy sub metering", xlab = ""))
  with(all_data,points(Time,Sub_metering_2,type = "l",col = colors[2]))
  with(all_data,points(Time,Sub_metering_3,type = "l",col = colors[3]))
  legend("topright", lty = 1,col= colors,legend=titles)
  # top right plot
  plot(all_data$Time,all_data$Voltage/1000,type = "l",ylab = "Voltage", xlab = "datetime")
  # bottom right plot
  plot(all_data$Time,all_data$Global_reactive_power,type = "l",ylab = "Global_reactive_power", xlab = "datetime")

  dev.off()
}

