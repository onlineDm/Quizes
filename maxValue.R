file<-read.csv("hw1_data.csv")
dataSet <- file[,c(1,5)]
counter <- 0
sum <- 0
newVector <- numeric()
for(i in 1:nrow(dataSet)) {
  
  row <- dataSet[i,]
  Ozone <- row["Ozone"]
  Month <- row["Month"]
  
  if (Month == 5 & !is.na(Ozone)) {
    newVector <- append(newVector, Ozone)
    counter <- counter + 1
  }
}

print(counter)
print(newVector)
print(newVector[which.max(newVector)])