file<-read.csv("hw1_data.csv")
dataSet <- file[,c(4,5)]
counter <- 0
sum <- 0
for(i in 1:nrow(dataSet)) {
  
  row <- dataSet[i,]
  Temp <- row["Temp"]
  Month <- row["Month"]
  
    if (Month == 6) {
      print(Temp)
      sum <- sum + Temp
      counter <- counter + 1
    }
}

print(counter)
print(sum/counter)