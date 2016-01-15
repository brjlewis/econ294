###Assigment 1###
###Brandon Lewis###
###Winter 2016###


###(0)### 

firstname<-"Brandon"
lastname<-"Lewis"

print(
  paste(
    firstname,
    lastname
  )
)

studentID<-"1154992"
print(studentID)


###(1)###

df.dta<-read.dta(
file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta")

View(df.dta)

df.csv<-read.csv(
file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv")

View(df.csv)

df.td<-read.table(
file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt")

View(df.td)

load(url(
"https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_RData.RData"))

View(NHIS_2007_RData)

print("The name assigned to this file is NHIS_2007_RData")


###(2)###

print("The .dta file is 193 KB")
print("The .csv file is 142 KB")
print("The .txt file is also 142 KB")
print("The RData file is 46 KB")

print("The RData file is the smallest. The variation in size is due to how compact
      each data file is. If you look at the data, the files that are larger contain 
      more spaces, which take up more memory. The RData file has no spaces. This
      makes it difficult to read, but takes up less memory. The .dta data file takes
      up the .csv and .txt data files take up more memory but are much easier to read")

###(3)###

class(NHIS_2007_RData)
typeof(NHIS_2007_RData)

print("The class of this data is data.frame, and the type is list")

length(NHIS_2007_RData)
dim(NHIS_2007_RData)
nrow(NHIS_2007_RData)
ncol(NHIS_2007_RData)
summary(NHIS_2007_RData)

print("The length is 9, the dimension is 4785x9, the number
      of rows is is 4785, the number of columns is 9, and
      the summary is as follows: 

HHX             FMX             FPX             SEX       
 Min.   :   16   Min.   :1.000   Min.   :1.000   Min.   :1.000  
      1st Qu.:13404   1st Qu.:1.000   1st Qu.:1.000   1st Qu.:1.000  
      Median :27527   Median :1.000   Median :1.000   Median :2.000  
      Mean   :27009   Mean   :1.019   Mean   :1.359   Mean   :1.549  
      3rd Qu.:40192   3rd Qu.:1.000   3rd Qu.:2.000   3rd Qu.:2.000  
      Max.   :53955   Max.   :6.000   Max.   :8.000   Max.   :2.000  
      BMI            SLEEP             educ           height     
      Min.   :12.91   Min.   : 3.000   Min.   : 0.00   Min.   :59.00  
      1st Qu.:23.63   1st Qu.: 6.000   1st Qu.:12.00   1st Qu.:64.00  
      Median :26.97   Median : 7.000   Median :13.00   Median :67.00  
      Mean   :31.73   Mean   : 9.507   Mean   :14.25   Mean   :69.58  
      3rd Qu.:31.51   3rd Qu.: 8.000   3rd Qu.:16.00   3rd Qu.:71.00  
      Max.   :99.99   Max.   :99.000   Max.   :99.00   Max.   :99.00  
      weight     
      Min.   :100.0  
      1st Qu.:149.0  
      Median :175.0  
      Mean   :266.2  
      3rd Qu.:215.0  
      Max.   :999.0  ")


###(4)###

df<-read.dta(
"https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")

str(df)

print("This data set has 1119754 observations and 30 variables")

summary(df$rw)

print(" Min:1.8, 1st Qu:10.7,  Median:15.9, Mean:19.8,
      3rd Qu:24.4    Max:354.8,    NA's:521279") 


###(5)###

v<-c(1,2,3,4,5,6,7,4,NULL,NA)
        
length(v)

print("There is a discrepency because NULL is no acknowledged as 
      a value")

mean(v,na.rm = TRUE)

print("Excluding the NA value, the mean is 4")


###(6)###

x<-matrix(c(1,2,3,4,5,6,7,8,9),ncol=3,byrow=TRUE)

t(x)

eign<-eigen(x)

eign$vec
eign$val


y<-matrix(c(1,2,3,3,2,1,2,3,0),ncol=3,byrow=TRUE)

solve(y)

y%*%solve(y)

print("The resulting matrix is an identity matrix")


###(7)###

carat<-c(5,2,0.5,1.5,5,NA,3)
cut<-c("fair","good","very good","good","fair","Ideal","fair")
clarity<-c("SI1","I1","VI1","VS1","IF","VVS2",NA)
price<-c(850,450,450,NA,750,980,420)

dmnd<-data.frame(carat,cut,clarity,price)
mean(dmnd$price,na.rm=TRUE)

print("The mean of price is 650")

faircut<-subset(dmnd,cut=="fair")
mean(faircut$price,na.rm=TRUE)

print("The mean price of the fair cuts is 673.3333")

othercuts<-subset(dmnd,cut!="fair")
mean(othercuts$price,na.rm=TRUE)

print("The mean price of the good, very good and ideal cuts is 626.6667")

large<-subset(dmnd,carat>2&cut=="Ideal"|carat>2&cut=="very good")
median(large$price,na.rm=TRUE)

print("There is no ideal or very good diamonds that are over 2 carats,
      so the median is not available")






