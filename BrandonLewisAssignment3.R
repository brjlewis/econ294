# Brandon Lewis #
# Assignment 3 #

print("Name:Brandon Lewis
      Student ID:1154992
      Email:brjlewis@ucsc.edu")


# Question 1 #

# Loading data set 

library(foreign)
df.ex<-read.dta("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")


# Question 2 #

# Installing dplyr package 

install.packages("dplyr")
library(dplyr)

dplyr::filter

# Creating first subset of df.ex, last month observations 

sub2013<-filter(df.ex, year=="2013"&month=="12")

# Printing the number of remaining observations

print(nrow(sub2013))
print("There are 13,261 observations remaining.")

# Creating second subset of df.ex, Summer observations

subsummer<-filter(df.ex, year=="2013"&month %in% c("7","8","9"))

# Printing the number of remaining observations

print(nrow(subsummer))
print("There are 39657 observations in Summer 2013.")


# Question 3 #

# Creating new data frame sorted by month and year in ascending order

df.ex.3a<-df.ex %>% arrange(year, month)


# Question 4 #

# Creating new data frame only including the columns year through age

df.ex.4a<-select(df.ex, year:age)

# Creating new data frame only including columns year through age and columns that start with "i"

df.ex.4b<-select(df.ex, year, month, starts_with("i"))

# Printing the distinct values in State variable

distinct(select(df.ex, state))


# Question 5 #

# Creating function to calculate the standard scores for each element

stndz <- function(x){
  (x - mean(x, na.rm = T))  /  sd(x, na.rm = T)
}

# Creating function to calculate feature scaled values for each element

nrmlz <- function(x){
  (x - min(x, na.rm = T)) / (max(x, na.rm = T) - min(x, na.rm = T))
}

# opening mutate function within dplyr

dplyr::mutate

# Creating new data frame with standard scores and feature scaled values

df.ex.5a<-
  df.ex %>% mutate(
    rw.stndz=stndz(rw),
    rw_nrmlz=nrmlz(rw)
  )

# Creating data frame with standard scores, featured scaled values and count at month and year groupings

df.ex.5b<-
  df.ex %>% 
  group_by(year, month)%>%
  mutate(
    rw.stndz=stndz(rw),
    rw_nrmlz=nrmlz(rw),
    count       = n()
  )


# Question 6 #

# Creating new data frame of summarizing rw

df.ex.6<-
  df.ex %>% 
  group_by(year, month, state)%>%
  summarise(
    rw_min=min(rw, na.rm=T),
    rw_1stq=quantile(rw,0.25, na.rm=T),
    rw_mean=mean(rw, na.rm=T),
    rw_median=median(rw, na.rm=T),
    rw_3rdq=quantile(rw,0.75, na.rm=T),
    rw_max=max(rw, na.rm=T),
    count       = n()
  )%>%
  select(state,starts_with("rw_"), count)

# Finding the year, month, state combination with the highest mean real wage

df.ex.6b<-filter(df.ex.6, rw_mean==max(df.ex.6$rw_mean))

print(df.ex.6b)

print("Washington D.C. in December of 2013 has the highest mean real wage.")


# Question 7 #

# Creating a new column for State

df.ex$state.char<- as.character(df.ex$state)

# Creating a new data frame with year and month in ascending order and state in reverse alphabetical order

df.ex.7a<-df.ex %>% arrange(year, month, desc(state.char))



































































