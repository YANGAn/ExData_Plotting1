png(file = "plot2.png")
datetime <- as.POSIXlt(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
with(data, plot(datetime,
                Global_active_power,
                'l',
                xlab="",
                ylab="Global Active Power (kilowatts)"))

dev.off()