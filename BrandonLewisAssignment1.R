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
























