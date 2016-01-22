###(0)###

BrandonLewisAssignment2<-list(
  firstname="Brandon",
  lastname="Lewis",
  email="brjlewis@ucsc.edu",
  StudenID=1154992
)

###(1)###

library(foreign)
load(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData"))

BrandonLewisAssignment2$s1a<-nrow(diamonds)
print("There are 7 observations.")

BrandonLewisAssignment2$s1b<-ncol(diamonds)
print("There are 4 rows.")

BrandonLewisAssignment2$s1c<-colnames(diamonds)
print(BrandonLewisAssignment2$s1c)

BrandonLewisAssignment2$s1d<-summary(diamonds$price)
print(BrandonLewisAssignment2$s1d)

###(2)###

library(foreign)
NHIS<-read.table("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",sep="\t", header=TRUE)

BrandonLewisAssignment2$s2a<-nrow(NHIS)
print("There are 4785 observations.")

BrandonLewisAssignment2$s2b<-ncol(NHIS)
print("There are 9 columns.")

BrandonLewisAssignment2$s2c<-colnames(NHIS)
print(BrandonLewisAssignment2$s2c)

BrandonLewisAssignment2$s2d<-mean(NHIS$weight)
print("The mean weight is 266.")

BrandonLewisAssignment2$s2e<-median(NHIS$weight)
print("The median weight is 175.")

hist(NHIS$weight)

table(NHIS$weight)

NHIS$weightadj<-ifelse(NHIS$weight>=996&NHIS$weight<=999,NA,NHIS$weight)

BrandonLewisAssignment2$s2f<-mean(NHIS$weightadj,na.rm=TRUE)
print("The adjusted mean is 174.")

BrandonLewisAssignment2$s2g<-median(NHIS$weightadj,na.rm=TRUE)
print("The adjusted median is 170.")

BrandonLewisAssignment2$s2h<-summary(NHIS$weightadj,NHIS$SEX==2)
print(BrandonLewisAssignment2$s2h)

BrandonLewisAssignment2$s2i<-summary(NHIS$weightadj,NHIS$SEX==1)
print(BrandonLewisAssignment2$s2i)

###(3)###

vec<-c(letters,LETTERS)

BrandonLewisAssignment2$s3a<-vec[seq(2,52,2)]
print(BrandonLewisAssignment2$s3a)

BrandonLewisAssignment2$s3b<-paste(vec[c(28,18,1)],collapse="")
print(BrandonLewisAssignment2$s3b)

arr<-array(c(letters,LETTERS),dim=c(3,3,3))

BrandonLewisAssignment2$s3c<-arr[1:3,1,2]
print(BrandonLewisAssignment2$s3c)

BrandonLewisAssignment2$s3d<-arr[2,2,1:3]
print(BrandonLewisAssignment2$s3d)

BrandonLewisAssignment2$s3e<-paste(arr[2,1,1],arr[3,3,2],arr[1,1,1],sep="")
print(BrandonLewisAssignment2$s3e)

###(4)###

library(foreign)
Alan<- read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")

sort(unique(Alan$year))
sort(unique(Alan$month))
sort(unique(Alan$educ))

BrandonLewisAssignment2$s4<-aggregate(Alan$rw,list(Year=Alan$year,Month=Alan$month,Educ=Alan$educ,RW=Alan$rw),mean,na.rm=TRUE)
print(BrandonLewisAssignment2$s4)









