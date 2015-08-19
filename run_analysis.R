X_train <- read.table("~/TidyData/UCI HAR Dataset/train/X_train.txt", quote="\"")
X_test <- read.table("~/TidyData/UCI HAR Dataset/test/X_test.txt", quote="\"")>   View(X_test)
features <- read.table("~/TidyData/UCI HAR Dataset/features.txt", quote="\"")
colnames(X_train)<-features[,2]
colnames(X_test)<-features[,2]
X_total<-rbind(X_train,X_test)
X_mean <- apply(X_total,2,mean)
X_sd<- apply(X_total,2,sd)
X_final<- rbind(X_mean,X_sd)
write.table(X_final,file="FinalTable",row.name=FALSE)
 