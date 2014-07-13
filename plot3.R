png(file = "plot3.png")
datetime <- as.POSIXlt(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
with(data, {
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
     })
legend("topright",
       lty=1,
       col=c("black","red","blue"),
       legend=c("Sub_metering_1",
                "sub_metering_2",
                "sub_metering_3"))
dev.off()