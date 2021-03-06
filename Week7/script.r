# assign the cpu data to a
# vector called x
# this process works for tiny data sets but for large data sets we need to read from the
# file system
x <- c(55,56,98,100,15,12,33,45,32,67,82,19,25)


# Write the plot window to a png file

png("Week6_Lab6_idle.png")

plot(x, type="l", xlab="Timestamp", ylab="%IDLE", main="CPUD Busy DATA")

# Turn off Window Capture
dev.off()

summary(x)


plot(100 - x, type="l", xlab="Timestamp", ylab="%Busy", main="CPU Busy DATA")


# read.table to read in large file of CPU stats
