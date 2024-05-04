myData<-read.csv("C:/Users/baronea/Dropbox/Albany/Intro to Data Analytics/Storage.csv", header=TRUE)
View(myData)
myData [myData == ""]<-"No Response"
myTable <- table(myData$Total.amount.of.research.data.you.currently.maintain.)
View(myTable)
ord=c("<500 GB","500 GB to 1 TB", "1 to 5 TB","5 to 10TB", "10 to 100 TB", ">100 TB", "No Respone")
y<-myTable[order(ord)]
View(y)
color=c("gray88","gray76","gray64","gray54","gray47","gray9","white")
pie(y,main="Data Storage requirements in the USDA-ARS", col=color)