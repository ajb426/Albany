myData<-read.csv("C:/Users/baronea/Dropbox/Albany/Intro to Data Analytics/Fish_Stocking_Lists__Actual___Beginning_2011.csv", header=TRUE)
View(myData)
x<-list(myData$Year)
avgYear<-aggregate(myData$Size..Inches., by=x, FUN="mean", na.rm = TRUE)
plot(avgYear, type="o", xlab="Year", xlim=c(2010,2020), ylab="Average size in inches", main="Average stocked fish size in NYS")
fit<-lm(avgYear$x~avgYear$Group.1,data=myData)
lines(avgYear$Group.1,fitted(fit), col="blue")
print(fit)
86.02525+-0.03833*2030