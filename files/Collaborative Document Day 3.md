# Collaborative Document Day 3

2021-10-20 Data Carpentry with R.

Welcome to The Workshop Collaborative Document.

This Document is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents.

----------------------------------------------------------------------------

This is the Document for today: [link](https://tinyurl.com/2021-10-20-data-carpentry-R)

Collaborative Document day 1: [link](https://tinyurl.com/2021-10-18-data-carpentry-R)

Collaborative Document day 2: [link](https://tinyurl.com/2021-10-19-data-carpentry-R)

Collaborative Document day 3: [link](https://tinyurl.com/2021-10-20-data-carpentry-R)

Collaborative Document day 4: [link](https://tinyurl.com/2021-10-21-data-carpentry-R) 

## 👮Code of Conduct

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

### Day 1 . Oct 18th
| Time  | |
|-------|-|
|09:00	| Welcome and pre-workshop survey
|09:15	| Data Organization in Spreadsheets
|10:45	| Coffee break
|11:00	| OpenRefine for Data Cleaning
|12:00	| Coffee break
|12:15	| OpenRefine for Data Cleaning (Continued)
|12:45	| Wrap-up
|13:00	| END

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

### Day 3. Oct 20th
| Time  | |
|-------|-|
|09:00	| Starting with Data (Continued) 
|10:15	| Coffee break 
|10:30	| Starting with Data (Continued) 
|11:30	| Coffee break 
|11:45	| Starting with Data (Continued) 
|12:45	| Wrap-up 
|13:00	| END 

### Day 4. Oct 21st
| Time  | |
|-------|-|
|09:00	| Data Visualisation with ggplot2 
|10:15	| Coffee break |
|10:30	| Data Visualisation with ggplot2 (Continued) 
|11:30	| Coffee break 
|11:45	| Processing JSON data 
|12:30	| Wrap-up and post-workshop Survey 
|13:00	| END 

## 🧠 Collaborative Notes

Are you ready to create a new R script?

| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha |:heavy_check_mark: |
|Tobias|:heavy_check_mark: |
|Jing|:heavy_check_mark: |
|Janetta| :heavy_check_mark:|
|Phuong | :heavy_check_mark:|
|Nadine|:heavy_check_mark:|
|Xudong|:heavy_check_mark: |
|Asif|:heavy_check_mark:|
|Richie|:heavy_check_mark: |
|Sanne|:heavy_check_mark: |
|Ilona|:heavy_check_mark:|
|Siqi| :heavy_check_mark:|
|Marietheres| :heavy_check_mark: |
|Diana|:heavy_check_mark: |
|Pichaya|:heavy_check_mark:|
|Jun | :heavy_check_mark:|
|Asma| :heavy_check_mark:|

# Starting with Data

### Reading data files
```r= 
read_csv() #read csv files into R
read_table() #read all kinds of files into R
```
### Loading the tidyverse package in a script
```r= 
library(tidyverse)
```

Were you able to load the data file?
| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha | |
|Tobias| :heavy_check_mark:|
|Jing| :heavy_check_mark:|
|Janetta| :heavy_check_mark: |
|Phuong| :heavy_check_mark:|
|Nadine|:heavy_check_mark:|
|Xudong|:heavy_check_mark:|
|Asif|:heavy_check_mark:|
|Richie|:heavy_check_mark: |
|Sanne| :heart:|
|Ilona|:heavy_check_mark:|
|Siqi|:heavy_check_mark:|
|Marietheres|works!  |
|Diana|:heavy_check_mark: |
|Pichaya|:)|
Jun |:heavy_check_mark:|

### Install package here

The here package searches for a file in your file path
```r= 
install.packages("here")
library("here")
```
### To check the version of R
```r= 
version
```
You can update your version of R in the top menu bar under Help => Check for updates

### Assigning the data file to the variable interviews
```r= 
interviews <- read_csv(here("data", "SAFI_clean.csv"), 
                        na = "NULL" )
```


### Difference between functions read_csv and read.csv
```r= 
read.csv #stores the data as a data frame
read_csv #stores the data as a table this is preferable (in the tidyverse package)
```

### Inspecting the data set interviews
```r= 
interviews # shows the first 10 lines
class(interviews) # show the class for interviews
dim(interviews) # returns the dimensions of your dataframe
nrow(interviews) # returns the number of rows
ncol(interviews) # returns the number of columns
```

### Extracting elements
```r= 
interviews[1, 1] #extract the first element in the first column
interviews[1, 6] #extract the first element in the 6th column
interviews[[1]] #extract the first column of the tibble
interviews[1:3, 7] #extract multiple elements, in this case the first 3 rows from the 7th column 
interviews[3, ] #extract all elements in the third row
interviews[, -1] #extract everything except the first column
```
The first element refers to the row, the second element to the column

### extract information base on the column name
```r= 
interviews["village"] # only extract the column village
interviews[, "village"]
interviews[["village"]] # extracts as a vector
```
### Using $ sign
```r= 
interviews$affect_conflicts
```

## Exercise 7. (In breakout rooms) 

a) Create a tibble (`interviews_100`) containing only the data in row 100 of the interviews dataset. 

b) Notice how `nrow()` gave you the number of rows in the tibble? Use that number to pull out just that last row in the tibble. Compare that with what you see as the last row using `tail()` to make sure it’s meeting expectations. Pull out that last row using `nrow()` instead of the row number. Create a new tibble (`interviews_last`) from that last row.

c) Using the number of rows in the interviews dataset that you found in question b, extract the row that is in the middle of the dataset. Store the content of this middle row in an object named `interviews_middle`.  (hint: This dataset has an odd number of rows, so finding the middle is a bit trickier than dividing n_rows by 2. Use the median( ) function and what you’ve learned about sequences in R to extract the middle row!

d) Combine `nrow()` with the `-[X, X]` notation to reproduce the behavior of `head(interviews)`, keeping just the first through 6th rows of the interviews dataset.

Done?
| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Room 1|a :heavy_check_mark: b :heavy_check_mark: c :heavy_check_mark: d  |
|Room 2| a-b :heavy_check_mark:, d :(|
|Room 3| :heavy_check_mark::heavy_check_mark::heavy_check_mark::heavy_check_mark:|
|Room 4| |

Solution to d:
```r=
# Get first 6 columns
interviews[1:6,]

# By excluding the other rows
interviews[-(7:nrow(interviews)) ,]
```

Exercise on selecting data in a tibble, C:
```r=
# Use of median
b <- c(1,5,8,6,9)
median(b)

interviews_middle <- interviews[median(1:nrow(interviews)), ]
```
# Factors
```r= 
weekdays <- factor(c("monday", "tuesday", "wednesday","thursday", "friday"))
weekdays
```
Sorted by default in alphabetical order
If you want to order it the way you want:
```r= 
weekdays <- factor(c("monday", "tuesday", "wednesday","thursday", "friday"), ordered=TRUE, levels = c("monday", "tuesday", "wednesday","thursday", "friday"))
weekdays
```
```r=
evaluations <- factor(c("low", "medium", "high"), ordered = TRUE)
evaluations

levels(evaluations) <- c("low", "medium", "high") # to reorder the factor levels
levels (weekdays) <- c("monday", "tuesday", "wednesday","thursday", "friday") # to reorder the factor levels for weekdays
```
```r= 
respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))
levels(respondent_floor_type)
nlevels(respondent_floor_type
```
Changing one level to "brick"
```r= 
levels(respondent_floor_type)[1] <- "brick"
```
```r= 
respondent_floor_type_ordered <- factor (respondent_floor_type, ordered = TRUE)

```
Inspecting the factors numeric secrets
```r= 
as.numeric(weekdays)

year_fct <- (c(1990, 1983, 1977, 1998, 1998))
as.numeric(year_fct)
as.character(year_fct)
as.numeric(as.character(year_fct)) # represent the years as their numbers

as.numeric(level(year_fct))[year_fct] # recommended way
mean(as.numeric(year_fct))# calculate the mean of year_fct
```


investigate the memb_assoc variable in our data
```r=
memb_assoc <- interviews$memb_assoc

memb_assoc <- as.factor(memb_assoc)
memb_assoc
```
Use the function plot
```r=
plot(memb_assoc)
```
```r= 
memb_assoc <- interviews$memb_assoc # we first need a vector again
memb_assoc[is.na(memb_assoc)] <- "undetermined" # replace all values that are NA with "undetermined"
memb_assoc <- as.factor(memb_assoc) # make a vector again to be able to plot
plot(memb_assoc)
```
Were you able to see the plot in R studio?

| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha | :)|
|Tobias|:) |
|Jing|:) |
|Janetta| :):|
|Phuong| :)|
|Nadine| :)|
|Xudong| :)|
|Asif|:) |
|Richie|:-) |
|Sanne|:cat: |
|Ilona|:)|
|Siqi|:) |
|Marietheres|yes|
|Diana| :)|
|Pichaya|:):|
|Asma|:)|
|Jun |:)|


### Exercise 8. 

a) Rename the levels of the factor to have the first letter in uppercase: “No”,”Undetermined”, and “Yes”. 

b) Now that we have renamed the factor level to “Undetermined”, can you recreate the barplot such that “Undetermined” is last (after “Yes”)?

Done?
| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Room 1| :heavy_check_mark: |
|Room 2| :heavy_check_mark: a only|
|Room 3| :heavy_check_mark:|
|Room 4| :heavy_check_mark: |


Answers:
a:
```r=
levels(memb_assoc) <- c("No", "Undetermined", "Yes")

# or
levels(memb_assoc) <- str_to_title(levels(memb_assoc))
```

b:
```r=
memb_assoc <- factor(memb_assoc, levels = c("No", "Yes", "Undetermined"))
plot(memb_assoc)
```

### Questions?

- Fariha 
- Tobias Just to make sure. What exactly is the difference between a factor and a vector?
- Jing
- Janetta: did we already also use dplyr? which was addressed in the program?
- Phuon
- Nadine: no specific question
- Xudong
- Asif
- Richie
- Sanne
- Ilona: nope got it
- Siqi
- Marietheres
- Diana
- Pichaya
- Asma
- Jun: I have a test tomorrow, so I am wondering if there will be a record for tomorrow's class -> Answer: we do not record the classes unfortunately :(

### Tips and Tops
#### Tip
- Really hope we'll also still get to ggplot tomorrow :cat:
- I am also very interested in ggplot
- Can you inform us about the duration of a breakout room before we enter it?
- Can you share a cheat sheet with us, where we have important functions? 
- inform about the packages needed beforehand, so we don't delay when installing packages doesn't work right away ;)
- Can you export tomorrow all the collaborative documents as a pdf and send them to us? 

#### Tops
- It is very good that the course only runs in the mornings because otherwise you would get lost due to tireness.
- It's easy to get back on track when dropping out for a bit with the notes in this document :)
- Nice exercises. I enjoyed the challenges this session
- Still great speed for me, I feel challanged and not everything is easy when you ahve to apply it on your own but I see progress happening
- Chaperoned breakout session are much better
- I am impressed, how well 4 people can work together in a team! :+1: 
- your are really patient during the explanations and also go a step more back to explain the process more

## 📚 Resources
[description of dataset](https://datacarpentry.org/socialsci-workshop/data/)
[tibbles](https://tibble.tidyverse.org/)

