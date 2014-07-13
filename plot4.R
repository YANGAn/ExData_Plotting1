png(file = "plot4.png")
par(mfcol = c(2,2))
datetime <- as.POSIXlt(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
with(data,{
  plot(datetime,
       Global_active_power,
       'l',
       xlab="",
       ylab="Global Active Power")
{
    plot(datetime,
         Sub_metering_1,
         col="black",
         'l',
         xlab="",
         ylab="Energy sub metering")           
    lines(datetime,
          Sub_metering_2,
          col="red")
    lines(datetime,
          Sub_metering_3,
          col="blue")
  }
plot(datetime,Voltage,"l")
plot(datetime,Global_reactive_power,"l")
})
dev.off()