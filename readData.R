readData <- function(file="data/household_power_consumption.txt"){
  library(readr)
  ## read data - "?" as na
  power_consumption<-read_csv2(file,na="?")

    ## filter to Feb 1-2 2007
  power_consumption<-power_consumption[power_consumption$Date %in% c("1/2/2007","2/2/2007"),]
  
  ## turn Date and Time columns to date and time types
  power_consumption$Date <- as.Date(power_consumption$Date,"%d/%m/%Y")
  power_consumption$Time <- strptime(paste(power_consumption$Date,power_consumption$Time),"%Y-%m-%d %H:%M:%S")
    
  ## turn needed columns to numeric
  power_consumption$Global_active_power<-as.numeric(power_consumption$Global_active_power)
  power_consumption$Global_reactive_power<-as.numeric(power_consumption$Global_reactive_power)
  power_consumption$Sub_metering_1<-as.numeric(power_consumption$Sub_metering_1)
  power_consumption$Sub_metering_2<-as.numeric(power_consumption$Sub_metering_2)
  power_consumption$Sub_metering_3<-as.numeric(power_consumption$Sub_metering_3)
  
  power_consumption
}

