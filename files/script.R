#Introduction to R
rm(list=ls())

x <- 1.0 # This is not a very clear object name
(current_temperature <- 12)
Current_temperature <- 13 # This is a new variable

2.47 * area_hectares

area_hectares <- 2.5
2.47 * area_hectares

r_length <- 2.5
r_width <- 3.2
r_area <- r_length * r_width
r_area

r_length <- 7.0
r_width <- 6.5
r_area

b <- sqrt(a)

round(3.14159)
round(3.14159, digits = 2)

round(3.14159)

# vectors
hh_members <- c(3, 7, 10, 6)
hh_members

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type

length(hh_members)
length(respondent_wall_type)

class(hh_members)
class(respondent_wall_type)

str(hh_members)
str(respondent_wall_type)

possessions <- c("bicycle", "radio", "television")
possessions <- c(possessions, "mobile_phone")
possessions

possessions <- c("car", possessions)
possessions

respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks")
respondent_wall_type[2]

respondent_wall_type[c(3, 2)]
more_respondent_wall_type <- respondent_wall_type[c(1, 2, 3, 2, 1, 3)]
more_respondent_wall_type

hh_members <- c(3, 7, 10, 6)
hh_members[c(TRUE, FALSE, TRUE)]

hh_members[-2]

hh_members > 5

hh_members[hh_members > 5]

# & for AND 
# | for OR

hh_members[hh_members<4 | hh_members>7]

hh_members[hh_members >= 4 & hh_members == 7] 

possessions[possessions == "car" | possessions == "bicycle"]

possessions[!possessions %in% c("car", "bicycle")]

#Missing data

rooms <- c(2, 1, 1, NA, 7)
mean(rooms)
mean(rooms, na.rm = TRUE)

max(rooms, na.rm = TRUE)
rooms[!is.na(rooms)]

which(!is.na(rooms))

sum(is.na(rooms))

na.omit(rooms)

rooms[complete.cases(rooms)]

is.na()
na.omit()
complete.cases()

rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
rooms_clean <- rooms[!is.na(rooms)]
rooms_clean

rooms_na_omit <- na.omit(rooms)
rooms_complete <- rooms[complete.cases(rooms)]

