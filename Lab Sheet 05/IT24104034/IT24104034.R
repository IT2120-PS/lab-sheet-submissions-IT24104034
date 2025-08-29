setwd("C:\\Users\\it24104034\\Desktop\\IT24104034")

#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
names(Delivery_Times) <- c("Minutes")
fix(Delivery_Times)

attach(Delivery_Times)

#Q2
histogram <- hist(Minutes, breaks = seq(20, 70, length = 6), right = FALSE)
lines(histogram$mids, histogram$counts)

#Q4
cum.freq <- cumsum(histogram$counts)
breaks <- round(histogram$breaks)
new<-c()

for (i in 1:length(breaks)) {
  if (i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = 'Frequency polygon', xlab = 'Minutes', ylab = "Frequency", ylim = c(0, max(new)))
