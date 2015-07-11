file<-read.csv("hw1_data.csv")
dataSet <- file[,c(1,2,4)]
counter <- 0
sum <- 0
apply(dataSet, function(row) {
  Ozone <- row["Ozone"]
  Solar.R <- row["Solar.R"]
  Temp <- row["Temp"]
  
#                   print(Ozone)
#                   print(Temp)
  
  if (!is.na(Ozone) & !is.na(Temp) & !is.na(Solar.R)) {
    if (Ozone > 31  & Temp > 90) {
      print(Solar.R)
    }
  }
})

# print(counter)
# print(sum/counter)