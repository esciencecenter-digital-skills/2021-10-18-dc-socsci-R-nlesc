# Collaborative Document Day 2

2021-10-19 Data Carpentry with R.

Welcome to The Workshop Collaborative Document.

This Document is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents.

----------------------------------------------------------------------------

This is the Document for today: [link](https://tinyurl.com/2021-10-19-data-carpentry-R)

Collaborative Document day 1: [link](https://tinyurl.com/2021-10-18-data-carpentry-R)

Collaborative Document day 2: [link](https://tinyurl.com/2021-10-19-data-carpentry-R)

Collaborative Document day 3: [link](https://tinyurl.com/2021-10-20-data-carpentry-R)

Collaborative Document day 4: [link](https://tinyurl.com/2021-10-21-data-carpentry-R) 

## 👮Code of Conduct (CoC)

* Participants are expected to follow those guidelines:
* Use welcoming and inclusive language.
* Be respectful of different viewpoints and experiences.
* Gracefully accept constructive criticism.
* Focus on what is best for the community.
* Show courtesy and respect towards other community members.

If you think the CoC have been violated please email:
training@esciencecenter.nl (both of us can see it)
or specific person if you don't want other person to see it
m.kuzak@esciencecenter.nl
or
l.deboer@esciencecenter.nl
 
## ⚖️ License

All content is publicly available under the Creative Commons Attribution License: [creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/).

## 🙋Getting help

To ask a question, type `/hand` in the chat window.

To get help, type `/help` in the chat window.

You can ask questions in the document or chat window and helpers will try to help you.

## 🖥 Workshop website

[link](https://esciencecenter-digital-skills.github.io/2021-10-18-dc-socsci-R-nlesc/)

🛠 Setup

[link](https://esciencecenter-digital-skills.github.io/2021-10-18-dc-socsci-R-nlesc/setup/)

Download files

[link](https://ndownloader.figshare.com/articles/6262019/versions/4)

## 👩‍🏫👩‍💻🎓 Instructors

Lieke de Boer, Mateusz Kuzak, Francesco Nattino

## 🧑‍🙋 Helpers

Dafne van Kuppevelt, Djura Smits, Hanno Spreeuw  

## 🗓️ Agenda

### Day 2. Oct 19th
| Time  | |
|-------|-|
|09:00	| Introduction to R and RStudio
|10:15	| Coffee break
|10:30	| Introduction to R and RStudio (Continued)
|11:30	| Coffee break
|11:45	| Starting with Data
|12:45	| Wrap-up
|13:00	| END

## 🧠 Collaborative Notes

### Introduction

# Working directory the same as directory created for your project?


# Were you able to create these three directories and does it look like Lieke's?


```r 
download.file("https://ndownloader.figshare.com/files/11492171", "data/SAFI_clean.csv", mode = "wb")
```
# Were you able to install tidyverse?

| Name  |:heavy_check_mark: or :x: |
|-------|-|
| Asif	      |:heavy_check_mark:|
| Asma	      |:heavy_check_mark:|
| Fariha      |:heavy_check_mark:|
| Ilona       |:heavy_check_mark:|
| Janetta     |:heavy_check_mark:|
| Jing        |:heavy_check_mark:|
| Jun Wen     |:heavy_check_mark:| 
| Marietheres |:heavy_check_mark:| 
| Nadine      |:heavy_check_mark:| 
| Pichaya     |:heavy_check_mark:|
| Phuong      |:heavy_check_mark:| 
| Richie      |:heavy_check_mark:|
| Sanne       |:heavy_check_mark:| 
| Tobias      |:heavy_check_mark:| 
| Xudong      |:heavy_check_mark:||
| Siqi        |:heavy_check_mark:|
| Russ        |:heavy_check_mark:|

# Working directory
The working directory is the folder R looks in by default
```r=
getwd()
```
Changing the working directory
```r=
setwd("c:\path of working directory")
```

Setting the workdirectory in R Studio
Go to 'Session' in the top menu bar and go to Set Working Directory 


#### Create directories
```r=
dir.create("data")
dir.create("data_output")
dir.create("fig_output")
```

Use the up arrow on your keyboard to show the last commands you used

Use ctrl + enter to run a line in a script in Windows
Use ctrl + command to run a lin a script on a Mac

# Installing packages
#### Installing the tidyverse package

```r=
install.packages("tidyverse")
```
#### Assigning values to variables

Keyboard shortcuts for the assigment operator (<-): option + - (Mac) or alt + - (Windows)
```r=
area_hectares <- 1.0
```
Always use descriptive variable names, for example current_temperature

mean is a function in R, don't use it for a variable, but use mean_age instead

Never assign a value to c
`c` stands for `concatenate` and is used to create vectors

#### Adding comments
You can add comments in your scripts by using #
for example:
```r=
current_temperature <- 13 # This a new variable
```


## Exercise

Create two variables `r_length` and `r_width` and assign them values. Create a third variable `r_area` and give it a value based on the current values of `r_length` and `r_width`. Show that changing the values of either `r_length` and `r_width` does not affect the value of `r_area`.
### Answer to exercise 
```r=
r_length <- 2.5
r_width <- 3.2
r_area <- r_length * r_width
r_area
```

```r=
 r_length <- 1.5
 r_width <- 2.5
 r_area <- r_length*r_width
 r_area

[1] 3.75

r_length <- 3.6
r_area

[1] 3.75
```
```r=
r_length <- 2
r_width <- 3
r_area <- r_length * r_width
r_length<- 4
r_area
```

```r=
r_length <- 3
r_width <- 5
r_area <- r_length * r_width
```

```r=
r_length <- 4

r_length <- 5
r_width <-  10
r_area <-  r_length*r_width
r_length <- 6
r_area
```

```r=
r_length <- 3
r_width <- 2
(r_area <- r_length * r_width)

r_length <- 5
r_width <- 4
(r_area <- r_length * r_width)
```

```r=
r_length <- 5
r_width <- 8
r_area <- r_length * r_width
r_length <- 9
r_area
``` 

#### set values for variables
```r=
r_length <- 5
r_width <- 4
r_area <- r_length * r_width
```

#### alter values for r_length and r_width
```r=
r_length <- 4
r_width <- 5
r_area
```

```r=
r_width = 25
r_lenght = 20
r_area = (r_lenght)*(r_width)
```

```r=
r_length <- 5
r_width <- 6
r_area <- r_length * r_width
(r_area <- r_length * r_width)
[1] 30
```


# Using functions

Example basic function square root
```r=
b <- sqrt(a)
```
Example basic round function
```r=
round(3.14159)
```
To show extra information about a function type `?function name`

It shows more information about the usage of a function and the arguments that can be used 
```r=
round(3.14159, digits = 2)
```
# Vectors
A vector is a serie of values using the c function
Example:
```r=
hh_members <- c(3, 7, 10, 6)
hh_members
```

[Wattle and daub](https://en.wikipedia.org/wiki/Wattle_and_daub) is a composite building method used for making walls and buildings.
![Wattle and daub in wooden frames](https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/HeiligenstadtFachwerk.JPG/220px-HeiligenstadtFachwerk.JPG)

Example:
```r=
respondent_wall_type <- c("muddaub", "burntbricks", "sunbricks") 
respondent_wall_type

length(hh_members)
length(respondent_wall_type)
```
string -  a set (string) of characters


Show the class for a vector
```r=
class(hh_members)
class(respondent_wall_type)
```
The difference between numbers and integers:
numbers: round numbers
integers: digit numbers

Show the structure of an object
```r=
str(hh_members)
str(respondent_wall_type)
```
### Adding an element to an existing vector
```r=
possessions <- c("bicycle", "radio", "television")
possessions <- c(possessions, "mobile_phone")
possessions
```
Adding an element at the beginning of a vector
```r=
possessions <- c("car", possessions)
possessions
```

# Selecting all but the second element:
```r=
hh_members[-2]
```
# Selecting all elements larger than 5
```r=
hh_members[hh_members>5]
```
# Combining selections using & for AND and | for OR.
```r=
hh_members[hh_members<4 | hh_members>7]

hh_members[hh_members>=4 & hh_members == 7]

possessions[possessions == "car" | possessions == "bicycle"]
```
# Count the number of missing values
```r=
rooms <- c(2, 1, 1, NA, 7)
sum(is.na(rooms))
```
## Exercise about data types

a) What will happen in each of these examples? (hint: use class() to check the data type of your objects):

```r
num_char <- c(1, 2, 3, "a")
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
tricky <- c(1, 2, 3, "4")
```

Why does this happen?

b) How many values in `combined_logical` are `TRUE` (as a character) in the following example:

```r=
num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
combined_logical <- c(num_logical, char_logical)
```

Explain what happened:
Breakout room 1: When there is a mixture of different types of data inside a vector, R assumes the data is of only one type. For instance, in the num_char variable 
there was a character element and that's why R automatically assumes that the rest of the integers are also character elements.

Breakout room 2: There is a hierarchy of types: character > numeric > logical
Question 2: all values are true (checked via the function str.)

Breakout room 4: everytime there´s a string included, all the elements in the list get converted to string (even if they were numeric or logical). When we mix numbers + logical, the logical elements become a number

BOR 5: When there is a character value in the series, everything is turned into characters. Logical values turn numeric when combined with numbers, or into a character string when combined with characters.

| Each breakout room, please check once you have completed an assignment. :heavy_check_mark:
|Breakout room|-|
|1|:heavy_check_mark:
|2|:heavy_check_mark:
|3| 
|4 ❤| 
|5:heavy_check_mark: 🍾|

## 6. 
Using this vector of rooms, create a new vector with the NAs removed.

```r 
rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
```
rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
na_indices <- which(is.na(rooms))
rooms_cleaned <- rooms[-na_indices]
rooms_cleaned

#### Please type your solution


| Name  | solution |

| Asif	      |:heavy_check_mark:|
| Asma	      ||
| Fariha      | :heavy_check_mark:|
| Ilona       |> rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
> rooms
 [1]  1  2  1  1 NA  3  1  3  2  1  1  8  3  1 NA  1
> rooms_cleaned <- na.omit(rooms)
> rooms_cleaned
 [1] 1 2 1 1 3 1 3 2 1 1 8 3 1 1
attr(,"na.action")
[1]  5 15
attr(,"class")
[1] "omit"|
| Janetta     |rooms <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
na.omit(rooms)
rooms[complete.cases(rooms)]
> rooms[complete.cases(rooms)]
 [1] 1 2 1 1 3 1 3 2 1 1 8 3 1 1| 
| Jing        |  rooms_corrected = rooms[!is.na(rooms)]|
| Jun Wen     ||rooms <- c(1, 2, NA, 5)
rooms[!is.NA(rooms)]
| Marietheres |rooms_corrected <- rooms[!is.na(rooms)] > rooms_corrected
 [1] 1 2 1 1 3 1 3 2 1 1 8 3 1 1| 
| Nadine      |rooms_clean <- rooms[complete.cases(rooms)]| 
| Pichaya      ||rooms[!is.na(rooms)]
| Phuong      |rooms_complete <- na.omit(rooms)|
| Richie      ||
| Sanne       || 
| Tobias      |rooms_new <- c(1, 2, 1, 1, NA, 3, 1, 3, 2, 1, 1, 8, 3, 1, NA, 1)
rooms_without_NA <- rooms_new[!is.na(rooms_new)]| 
| Xudong      ||rooms_NA_RM <- rooms[!is.na(rooms)]
| Siqi        |rooms_no <- rooms[!is.na(rooms)]|
| Russ        ||
| Diana       |rooms2 <- na.omit(rooms)|

### 💾 how to organise your project on your computer? 💾
![project organization](https://datacarpentry.org/r-socialsci/fig/rstudio_project_files.jpeg)

## FEEDBACK (anonymous) 🦸‍♀️
### TIP
- the last part gone super fast and too much information to remember at once (is there a cheat-sheet?)
- to help people with problems, perhaps try to do in breakout rooms, so that the problem can be shared on screen, thus easier to get helped. And the others just can continue the class
- if one instructor is present in each of the break rooms, it will be helpful
- i missed a lot as it was fast
- I feel we lost some time at the start due to people not having the necesary programs installed/ not able to get started
- Not a fan of the breakout sessions to be honest
- When using the script, can you please use ##comments that states what we are doing, maybe its useful when we get lost with the functions
- I think there can be more room for exercises to do individually or in groups. try to figure things out before we get the answer.
### TOP
- great speed 
- highly agile correspondance to us
- the organization with the spreadsheet is great
- the working atmosphere is pleasant
- Once everyone was setup, speed was nice for trying along and plenty room for questions
- Not having to take notes ourselves is very helpful to just focus on the practical. 
## 📚 Resources
- [R for Data Science](https://r4ds.had.co.nz/)
- if you do bioinformatics https://www.bioconductor.org/ is an amazing set of packages
- [RStudio Cloud](https://rstudio.cloud/)



