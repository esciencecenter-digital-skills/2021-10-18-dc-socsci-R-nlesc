#read_csv() #reads csv files into R
#read_table() #reads all kinds of files into R

library(tidyverse)
library(here)

interviews <- read_csv(here("data", "SAFI_clean.csv"), 
                       na = "NULL")

getwd()

class(interviews)

dim(interviews) # returns the dimensions of your dataframe or tibble
nrow(interviews) # returns the number of rows
ncol(interviews) 

head(interviews) # shows the first six rows
tail(interviews) # shows the last six rows

names(interviews)

str(interviews) #information about the structure of your object

summary(interviews)

## first element in the first column 
interviews[1, 1]
## first element in the 6th column
interviews[1, 6]
interviews[6, 1]

# extract the first column of the tibble
interviews[[1]]
interviews[1]

# extract multiple elements
interviews[1:3, 7]
c(1:3)

# extract third row
interviews[3, ]

interviews[, -1]

# extract information based on column name
interviews["village"]
interviews[, "village"]
interviews[["village"]]

interviews$affect_conflicts

head(interviews)

# how to select the first six rows using nrow() and - notation

# Combine nrow() with the - notation above to reproduce 
# the behavior of head(interviews), keeping just the first 
# through 6th rows of the interviews dataset

# exercise on selecting data in a tibble, D
head(interviews)
interviews[1:6, ]
interviews[-(7:nrow(interviews)), ]

# exercise on selecting data in a tibble, C
interviews_middle <- interviews[median(1:nrow(interviews)), ]
interviews_middle

# use of median
b <- c(1, 5, 8, 6, 9)
median(b)

# vector of row numbers of interviews
interviews_rownums <- 1:nrow(interviews)
interviews_rownums

#this is a vector
weekdays_vec <- c("monday", "tuesday", "wednesday", 
                  "thursday", "friday")

weekdays_vec # returns a vector of characters


#Factors
# this is a factor
weekdays <- factor(c("monday", "tuesday", "wednesday", 
                     "thursday", "friday"), ordered=TRUE, 
                   levels = c("monday", "tuesday", "wednesday",
                              "thursday", "friday"))

weekdays # returns levels

evaluations <- factor(c("low", "medium", "high"), ordered = TRUE)

evaluations

# reorder the factor levels
levels(evaluations) <- c("low", "medium", "high")

# reorder the factor levels for weekdays 
levels(weekdays) <- c("monday", "tuesday", "wednesday", 
                      "thursday", "friday")

# we collected some responses
respondent_floor_type <- factor(c("earth", "cement", "cement",
                                  "earth"))

levels(respondent_floor_type)
nlevels(respondent_floor_type)

levels(respondent_floor_type)[1] <- "brick"
respondent_floor_type

respondent_floor_type_ordered <- factor(respondent_floor_type, 
                                        ordered = TRUE)

levels(respondent_floor_type_ordered) <- c("earth", "brick")

rm(respondent_floor_type)
respondent_floor_type <- factor(c("earth", "brick", "brick", "earth"), 
                                ordered = TRUE, levels = c("earth", "brick"))

# inspecting the factors numeric secrets
as.numeric(weekdays)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1998))

as.numeric(year_fct)

as.numeric(as.character(year_fct)) # represent the years as their numbers 

as.numeric(levels(year_fct))[year_fct] # recommended way 

mean(year_fct)
mean(as.numeric(year_fct))

## investigate the memb_assoc variable in our data
memb_assoc <- interviews$memb_assoc

memb_assoc <- as.factor(memb_assoc) # convert to factor

memb_assoc

plot(memb_assoc)  

# replace all values that are NA with "undetermined"
memb_assoc <- interviews$memb_assoc # we first need a vector again, otherwise we cannot change the factor 
memb_assoc

memb_assoc[is.na(memb_assoc)] <- "undetermined"
memb_assoc

memb_assoc <- as.factor(memb_assoc)
  
plot(memb_assoc)

## capitalize labels of factor
memb_assoc <- interviews$memb_assoc
memb_assoc[is.na(memb_assoc)] <- "undetermined"

memb_assoc <- as.factor(memb_assoc) # convert to factor

levels(memb_assoc) <- c("No", "Undetermined", "Yes")
levels(memb_assoc) <- str_to_title(levels(memb_assoc)) #capitalizes strings automatically

levels(memb_assoc) <- c("No", "Yes", "Undetermined")

memb_assoc <- factor(memb_assoc, 
                     levels = c("No", "Yes", "Undetermined"))
plot(memb_assoc)

