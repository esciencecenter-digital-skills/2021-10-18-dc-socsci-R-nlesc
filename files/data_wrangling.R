rm(list=ls())

library(tidyverse)
library(here)
library(lubridate)

interviews <- read_csv(here("data", "SAFI_clean.csv"), 
                       na = "NULL")

select() # subsets columns
filter() # subsets rows on conditions
mutate() # creates new columns by using information from other columns
group_by() 
summarize() #these create summary statistics on grouped data
arrange() # sorts results
count() # counts discrete values

select(interviews, village, no_membrs, months_lack_food) # selects from interviews 
                                                          # all columns that are separated by commas after

select(interviews, village:respondent_wall_type) # select all variables between village and respondent wall type

filter(interviews, village == "Chirodzo") # only select Chirodzo data

# specify multiple conditions

filter(interviews, (village == "Chirodzo" & village == "Ruaca") | no_meals > 2,
                   rooms > 1)

filter(interviews, village == "Chirodzo" &
         rooms > 1 &
         no_meals > 2) # this is identical to  the above

filter(interviews, village == "Chirodzo" | village == "Ruaca") # multiple villages

# Pipes (not | but %>%)

interviews2 <- filter(interviews, village == "Chirodzo")
interviews_final <- select(interviews2, village:respondent_wall_type) # sequential operations

interviews_final <- select(filter(interviews, village == "Chirodzo"), 
                           village:respondent_wall_type) # nested sequence of operations

# using pipes to do the same
interviews %>% 
  filter(village == "Chirodzo") %>% 
  select(village:respondent_wall_type)

# ctrl + shift + M 
# cmd + shift + M

# assign this new tibble to a new object
interviews_final <- interviews %>% 
  filter(village == "Chirodzo") %>% 
  select(village:respondent_wall_type)

interviews %>% 
  filter(memb_assoc == "yes") %>% 
  select(affect_conflicts, liv_count, no_meals)

# mutate(): a function to create new columns based on values in existing columns

interviews_ratio <- interviews %>% 
  mutate(people_per_room = no_membrs / rooms) # calculate a ratio of number of household 
                                            # members per number of rooms used for sleeping

interviews_ratio$people_per_room

interviews %>% 
  mutate(people_per_room = no_membrs / rooms) %>% 
  select(people_per_room) # if you do not want to save a variable, but want 
                          # to inspect your newly created one

interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  mutate(people_per_room = no_membrs / rooms) # filter based on membership 
                                              # of irrigation association

# Exercise 10:
# Create a new dataframe from the interviews data that meets the following criteria: 
# contains only the village column and a new column called total_meals containing 
# a value that is equal to the total number of meals served in the household per day 
# on average (no_membrs times no_meals). Only the rows where total_meals is greater 
# than 20 should be shown in the final dataframe.

# almost correct:
interviews_meals <- interviews %>% 
  mutate(total_meals = no_membrs * no_meals) %>% 
  filter(total_meals == ">20") %>% # this will compare the total_meals column to the character value ">20"
  select(village, total_meals)

# correct solution
interviews_meals <- interviews %>% 
  mutate(total_meals = no_membrs * no_meals) %>% 
  filter(total_meals > 20) %>% # this will compare the total_meals column to the character value ">20"
  select(village, total_meals)

# group_by() # an easy way of grouping your data
# summarize()  

interviews %>% 
  group_by(village) %>% # group our tibble into different groups based on village
  summarize(mean_no_membrs = mean(no_membrs)) # calculate the mean number of household members per village 

interviews %>% 
  group_by(village, memb_assoc) %>% 
  summarize(mean_no_membrs = mean(no_membrs))
  
interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  group_by(village, memb_assoc) %>% 
  summarize(mean_no_membrs = mean(no_membrs))
  
interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  group_by(village, memb_assoc) %>% 
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs)) # adding another
  
interviews_grouped <- interviews %>%
  filter(!is.na(memb_assoc)) %>% 
  group_by(village, memb_assoc)


interviews %>% 
  filter(!is.na(memb_assoc)) %>% 
  group_by(village, memb_assoc) %>% 
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs)) %>% 
  arrange(desc(min_membrs))

# Exercise

# How many households in the survey have an average of two 
# meals per day? Three meals per day? Are there any other 
# numbers of meals represented?

interviews %>% 
  group_by(no_meals) %>% 
  count() # this works and groups the dataframe

interviews %>% 
  count(no_meals) # this creates an ungrouped tibble

# Use group_by() and summarize() to find the mean, min, 
# and max number of household members for each village. 
# Also add the number of observations (hint: see ?n).

interviews %>% 
  group_by(village) %>% 
  summarize(
    mean_households = mean(no_membrs),
    min_households = min(no_membrs),
    max_households = max(no_membrs),
    n_obs = n()
  )




