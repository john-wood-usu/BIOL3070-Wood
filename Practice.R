round(4, digits = 3)
round(7.50000, digits = 1)

?round

x <- 7.1985712059817

round(x)

?mean

mean(c(3,2,4,5,2,5,3,5,3,2,6), trim=0.4, na.rm=TRUE)

?read.csv

data <- read.csv(file="bloodmeal_for_BIOL3070.csv")

head(data)
View(data)
str(data)
dim(data) #dimensions

git add .
git commit -m "final abstract and knitted .md file"
git push origin main --force