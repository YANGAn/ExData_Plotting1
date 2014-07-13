X <- read.table("household_power_consumption.txt",
                header=TRUE,
                sep=";",
                nrow=2075260,
                colClasses = "character")
data <- X[(X$Date=="1/2/2007")|(X$Date=="2/2/2007"),]
write.csv(data,"data.csv")
data <- read.csv("data.csv")
data$Date <- as.Date(data$Date,"%d/%m/%Y")
