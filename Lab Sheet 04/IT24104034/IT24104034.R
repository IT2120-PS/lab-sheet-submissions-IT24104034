setwd("C:\\Users\\it24104034\\Desktop\\IT24104034")

branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
fix(branch_data)
attach(branch_data)


str(branch_data)

mean(Branch)
mean(Sales_X1)
mean(Advertising_X2)
mean(Years_X3)

boxplot(Sales_X1, main = "Box plot for Sales", outline = TRUE, 
        outpch = 8, horizontal = TRUE)

summary(Advertising_X2)
Minimum <- min(Advertising_X2, na.rm = TRUE)
Minimum

Maximum <- max(Advertising_X2, na.rm = TRUE)
Maximum

Q1 <- quantile(Advertising_X2)[2]
Q1

Q2 <- quantile(Advertising_X2)[3]
Q2

Q3 <- quantile(Advertising_X2)[4]
Q3

IQR <- Q3 - Q1
IQR

finding_outliers = function(outlier){
  Q1 <- quantile(outlier)[2]
  Q3 <- quantile(outlier)[4]
  IQR <- Q3 - Q1
  print(IQR)
  lb <- Q1 - 1.5*IQR
  print(lb)
  ub <- Q3 + 1.5*IQR
  print(ub)
  
  outlier <- paste(outlier[outlier<lb | outlier>ub], collapse = ",")
  return(outlier)
}
finding_outliers(Years_X3)
