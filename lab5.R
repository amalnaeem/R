carmode <- table(mtcars$am)
barplot(carmode, col=rainbow(2))
plot(mtcars$am, mtcars$mpg,xlab="Mode", ylab="mpg", main="MPG compared with mode(auto/manual)")
boxplot(mtcars$am)

apm <- matrix(AirPassengers, ncol = 12, byrow =TRUE,  dimnames = list( as.character(1949:1960),month.abb))
profitableMonth = sort(colSums(apm),decreasing = TRUE)[1]
namesOfProfitableMonth <- names(profitableMonth)
month <- "Most Profitable Month is "
month
namesOfProfitableMonth

profitableYear = sort(rowSums(apm),decreasing = TRUE)[1]
namesOfProfitableYear <- names(profitableYear)
namesOfProfitableYear

plot(AirPassengers,ylab='Number of Passengers (in thousands)', xlab='Year')
price <- 8000
#ncol(apm)
#nrow(apm)
apm[1,]
apm[1,]<-apm[1,]*price
for (i in 2:nrow(apm)){
  #print(i)
  tp = (price/100)*10
  np = price+tp
  for (j in 0:ncol(apm)){
    
    
    old <- apm[i,j]
    
    new<-old*np
    apm[i,j]<-new
    #print(apm[i][j])
    price <-np
    
  }
}
apm
profitableMonth = sort(colSums(apm),decreasing = TRUE)[1]
nameOfProfitableMonth <- names(profitableMonth)
nameOfProfitableMonth

profitableYear = sort(rowSums(apm),decreasing = TRUE)[1]
namesOfProfitableYear <- names(profitableYear)
namesOfProfitableYear

print("Total Revenue Generated: ")
sum(apm)

MostTravelledMonth = sort(colSums(apm),decreasing = TRUE)[1:3]
nameOfTravelledMonths <- names(MostTravelledMonth)
nameOfTravelledMonths

MostTravelledYear = sort(rowSums(apm),decreasing = TRUE)[1:3]
nameOfTravelledYears <- names(MostTravelledYear)
nameOfTravelledYears

