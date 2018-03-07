carmode <- table(mtcars$am)
barplot(carmode, col=rainbow(2))
plot(mtcars$am, mtcars$mpg,xlab="Mode", ylab="mpg", main="MPG compared with mode(auto/manual)")
boxplot(mtcars$am)

