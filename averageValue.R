file<-read.csv("hw1_data.csv")
firstColumn <- file[,1]
#print(firstColumn)
counter <- 0
sum <- 0
for(i in 1:length(firstColumn)) {
  if (!is.na(firstColumn[i])) {
    counter <- counter + 1    
    print(counter)
    sum <- sum + firstColumn[i]
    print(firstColumn[i])
  }
}

print(sum)
print(counter)
print(sum/counter)