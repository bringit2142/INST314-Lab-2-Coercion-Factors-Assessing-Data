# Task 1
(vector1 <- c(1.1:11))
typeof(vector1)

(vector2 <- as.integer(vector1))
typeof(vector2)

#Task 2
(vector3 <-seq (10,100, by=8))

#Task 3
(vector4 <- rep(c("Information Science", "UMD","Programming"
                ,"INST314","College Park","Terps"),9))

#Task 4
(m <- matrix(1:20,nrow = 5))
typeof(m)
is.matrix(m)

(df1 <- as.data.frame(m))
typeof(df1)
is.data.frame(df1)

#Task 5
(column1 <- c(1:4)) 
(column2 <- c(1:20))
(column3 <- c(2.2:22))
(df2 <- cbind.data.frame(column1,column2,column3))
df2$column1 <- factor(df2$column1,
                 levels = c(1,2,3,4),
                 labels = c("College Park","UMD","Information Science","INST314"))

#Task 6
write.table(df2, "export.txt",row.names=F,sep='\t')
df2txt <- read.table("export.txt")
head(df2txt)
tail(df2txt)

#Task 7
write.csv(df2,"export.csv",row.names=F)
df2csv <- read.csv('export.csv')
View(df2csv)
head(df2csv)


rm(list = ls())
