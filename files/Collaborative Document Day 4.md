# Collaborative Document Day 4

2021-10-21 Data Carpentry with R.

Welcome to The Workshop Collaborative Document.

This Document is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents.

----------------------------------------------------------------------------

This is the Document for today: [link](https://tinyurl.com/2021-10-21-data-carpentry-R)

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
|10:30	| Data Wrangling with dplyr and tidyr 
|11:30	| Coffee break 
|11:45	| Data Wrangling with dplyr and tidyr (Continued)
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
|12:30	| Wrap-up and post-workshop survey & testimonials
|13:00	| END 

## :woman-lifting-weights: Exercises
### Exercise 9. 
Using pipes, subset the interviews data to include interviews where respondents were members of an irrigation association (`memb_assoc`) and retain only the columns `affect_conflicts`, `liv_count`, and `no_meals`.

Answer:
```r=
interviews %>%>
	filter(memb_assoc == "yes") %>%>
	select(affect_conflicts, liv_count, no_meals)
```

Were you able to do this?
| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha | :heavy_check_mark:|
|Tobias| :heavy_check_mark:|
|Jing|:heavy_check_mark: |
|Janetta|:heavy_check_mark: |
|Phuon| :heavy_check_mark:|
|Nadine|:heavy_check_mark:|
|Xudong|:heavy_check_mark: |
|Asif| :heavy_check_mark:|
|Richie|:heavy_check_mark: |
|Sanne|:cat: |
|Ilona| |
|Siqi|:heavy_check_mark: |
|Marietheres| :heavy_check_mark:|
|Diana| |
|Pichaya|:heavy_check_mark: |
|Asma| |
|Jun| |


### Exercise 10. 
Create a new dataframe from the interviews data that meets the following criteria: contains only the village column and a new column called `total_meals` containing a value that is equal to the total number of meals served in the household per day on average (`no_membrs` times `no_meals`). Only the rows where `total_meals` is greater than 20 should be shown in the final dataframe.

Hint: think about how the commands should be ordered to produce this data frame!

Answer:
```r=
interviews_meals <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
  filter(total_meals > 20) %>% 
  select(village, total_meals)
```


Were you able to create a new dataframe with the specified properties?

| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha | :heavy_check_mark:|
|Tobias| |
|Jing| :heavy_check_mark:|
|Janetta|:heavy_check_mark: |
|Phuong| :heavy_check_mark: |
|Nadine|:heavy_check_mark:|
|Xudong|:heavy_check_mark: |
|Asif|:heavy_check_mark: |
|Richie|:heavy_check_mark: |
|Sanne|:cat: |
|Ilona|:heavy_check_mark:|
|Siqi|:heavy_check_mark: |
|Marietheres| :heavy_check_mark: |
|Diana|:heavy_check_mark: |
|Pichaya|:heavy_check_mark: |
|Asma| |
|Jun| |

## Exercise 11. (in breakout rooms, 4 per breakout room)

Paste the code that lead you to your answer below each subquestion:

a) How many households in the survey have an average of two meals per day? Three meals per day? Are there any other numbers of meals represented?  

b) Use `group_by()` and `summarize()` to find the mean, min, and max number of household members for each village. Also add the number of observations (hint: see ?n).

(c should be skipped)

Answers:
A
```r=
interviews %>% 
    count(no_meals) # this creates an ungrouped tibble
```
B
```r=
interviews %>% 
   group_by(village) %>%
	summarize(
	mean_households = mean(no_membrs),
	min_households = min(no_membrs),
	max_households = max(no_membrs),
	n_obs = n()
	)
```


### Room 1:
A:
interviews %>% 
  group_by(no_meals) %>% 
  count()

B:
interviews %>% 
  group_by(village) %>% 
  summarize(mean_no_membrs = mean(no_membrs),
            max_no_membrs = max(no_membrs),
            min_no_membrs = min(no_membrs))


### Room 2:
A:
interviews %>% 
  count(no_meals)

B:
interviews %>% 
  group_by(village) %>% 
  summarise(mean_no_members = mean(no_membrs), 
            min_members = min(no_membrs),
            max_members = max(no_membrs),
            n_observations = n())

### Room 3:
A:interviews %>% count(no_meals)
B:interviews %>%  group_by(village) %>%  summarise(mean_household = mean(no_membrs), 
                                                 min_household = min(no_membrs), 
                                                 max_household = max(no_membrs))

### Room 4:
A:
> interviews_meals <- interviews %>% 
+   group_by(no_meals) %>% 
+   count()
> interviews_meals
# A tibble: 2 x 2
# Groups:   no_meals [2]
  no_meals     n
     <dbl> <int>
1        2    52
2        3    79
B:

## Exercise 13. (in breakout rooms)

Use what you just learned to create a scatter plot of rooms by `village` with the `respondent_wall_type` showing in different colours. Does this seem like a good way to display the relationship between these variables? What other kinds of plots might you use to show this type of data?



## 🧠 Collaborative Notes

Have you loaded the data?

| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha |:) |
|-------|-| |
|Tobias| :)|
|Jing|:) |
|Janetta| :heavy_check_mark:|
|Phuong | :)|
|Nadine|:)|
|Xudong|:) |
|Asif |:)|
|Richie |:-) |
|Sanne|%>% |
|Ilona|:)|
|Siqi|:) | |
|Marietheres|:) |
|Diana|:)|
|Pichaya|:) |
|Asma| :D|
|Jun|:) |


Difference between a vector and a factor
```r= 
Vector: a sequence of individual data points (has to be of the same type like numeric, integer, etc.)

Factor: class of data containing categorical data. For example a character factor containing the days of the week with numeric values in a specific order 
```

# Data wrangling

To remove all the variables in the R environment
```r= 
rm(list=ls())
```
We are using *dplyr*, *dplyr* is part of the tidyverse package.
```r= 
library(tidyverse)
```
Load *here* to make reading the data easier
```r= 
library(here)
```
Reading the interviews data with the *read_csv* function
```r= 
interviews <- read_csv(here("data", "SAFI_clean.csv"), na = "NULL")
```
Most common functions in *dplyr*
```r= 
select() # subsets columns
filter() # subsets rows on conditions
mutate() # creates new columns by using information from other columns
group by()
summarize() # these create summary statistics on grouped data
arrange() # sorts results
count() # counts discrete values
```
```r= 
select(interviews, village, no_membrs, months_lack_food) #selects from interviews all the columns that are separated by commas
```
```r= 
select(interviews, village: respondent_wall_type) # select all variables between village and respondent_wall_type
```
```r= 
filter(interviews, village == "Chirodzo") # filters interviews where village == "Chirodzo" (only select Chirodzo data)
```
### Specify multiple conditions
```r= 
filter(interviews, village == "Chirodzo", rooms > 1, no_meals > 2) ### specify multiple conditions
```
Identical to the above
```r= 
filter(interviews, village == "Chirodzo" & rooms > 1 & no_meals > 2) 
```
Using *|* to filter from two villages
```r= 
filter(interviews, village == "Chirodzo" | village="Ruaca") 
```
Also see the cheat sheet under Resources below and extra information about precedence of the operators in R.

### Pipes (not *|* but %>%>)
```r=
interviews2 <- filter(interviews, village == "Chirodzo")
interviews_final <- select(interviews2, village:respondent_wall_type) #sequential operations


interviews_final <- select(filter(interviews, village =="Chirodzo"), village:respondent_wall_type) # nested sequence of operations

```
Keyboard shortcuts for pipes
Windows: ctrl + shift + m
Mac: command + shift + m

Using pipes to do the same
```r=
interviews %>%> 
	filter(village == "Chirodzo") %>%>
	select(village:respondent_wall_type)
```
Assign this new tibble to a new object *interviews_final*
```r=
interviews_final <- 
interviews %>%> 
	filter(village == "Chirodzo") %>%>
	select(village:respondent_wall_type)
```
### Creating new columns based on existing columns using the function *mutate*
```r=
interviews_ratio <- interviews %>%>
	mutate(people_per_room = no_members / rooms)
interviews_ratio$people_per_room # to inspect
```
If you do not want to save a variable, but want to inspect your newly created one
```r=
interviews %>%>
	mutate(people_per_room = no_members / rooms) %>%>
	select(people_per_room)
```

Filtering everything that is not na
```r=
interviews %>%>
	filter(!is.na(memb_assoc)) %>%>
	mutate(people_per_room = no_membrs / rooms)
```
### Grouping your data using *group_by* 

```r=
interviews %>%
	group_by(village) %>% # group our tibble into different groups based on village
	summarize(mean_no_membrs = mean(no membrs)) # calculate the mean number of households
```
Splitting up by village and memb_assoc
```r=
interviews %>%
	group_by(village, memb_assoc) %>% 
	summarize(mean_no_membrs = mean(no_membrs)) 
```
First filtering out the *na*
```r=
interviews %>%
	filter(!is.na(memb_assoc)) %>%
	group_by(village, memb_assoc) %>% 
	summarize(mean_no_membrs = mean(no_membrs)) 
```
Adding a column
```r=
interviews %>%
	filter(!is.na(memb_assoc)) %>%
	group_by(village, memb_assoc) %>% 
	summarize(mean_no_membrs = mean(no membrs),
		min_membrs = min(no_membrs)) 
```
```r=
interviews_grouped <- interviews %>%>
	filter(!is.na(memb_assoc)) %>%
	group_by(village, memb_assoc)
```
Sorting the summary table by using *arrange*
```r=
interviews %>%
	filter(!is.na(memb_assoc)) %>%
	group_by(village, memb_assoc) %>% 
	summarize(mean_no_membrs = mean(no membrs),
		min_membrs = min(no_membrs)) %>%
	arrange(desc(min_membrs))
```
Count the number of rows
```r=
interviews %>%
	count(village, sort = TRUE)
```
# GGPLOT
Each chart built with ggplot2 must include the following

1. _Data_
2. _Aesthetic mapping (aes)_: 
    - Describes how variables are mapped onto graphical attributes
    - Visual attribute of data including x-y axes, color, fill, shape, and alpha
3. Geometric objects (geom):
    - Determines how values are rendered graphically:
        - as bars (geom_bar)
        - scatterplot (geom_point)
        - line (geom_line)
        - etc.

GGPLOT template:
```r=
<DATA> %>%
    ggplot(aes(<MAPPINGS>)) +
    <GEOM_FUNCTION>()
```
Preparing the plot
```r=
interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items))
```
Plotting the plot
```r=
interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
    geom_point() # render the graphics
```
Assigning to a variable
```r=
interview_plot <- interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
```
Calling the variable
```r=
interviews_plot +
	geom_point()
```
Changing the transparency and size of the points
```r=
interview_plot <- interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_point(alpha = 0.5, size = .5)
  interviews_plot
```
Using geom_count to change the size of the points based on the value 
```r=
interview_plot <- interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_count(alpha = 0.5)
  interviews_plot
```
Slightly jitter the position of each point to avoid overplotting
```r=
interview_plot <- interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_jitter(width = .2, height = .2, color = "blue") # default is 0.4
  interviews_plot
```
Using different colors for different villages
```r=
interviews_plotting %>%
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_jitter(aes(color = village), width = .2, height = .2)
```

## Tips & Tops


### Tips (what could we improve)
- A course on data visualisation could be a nice follow-up !
- I'd be interested in a FU indeed (with anything we missed due to delay)
- please make sure people already have installed R and are able to run the libraries so that from the beginning everyone can follow the script
- Agree with above. It would ensure keeping the speed in the workshop
- I would have liked the workshop to go a bit faster, but I do realise we are all at different levels so it is understandable that it didn't.
- The exercises were nice, but it didn't always work out in the breakout session (everyone being silent or everyone blabbing along xD ) It went better in the supervised sessions though.

### Tops (what went well)
- Was quite useful to go back to the basics
- Loved the emphasis on inclusivity / creating a positive environment
- the workshop was great! The working atmospherewas pleasant and Lieke you did an amazing job as an instructor
- the organiszation was great and thanks that you provide us with the R scripts and notes so we can re-read, re-do some parts of this course again
- the session was so interactive and we got much assisted
- The balance between exercises and explanation was the best in this session
- Clear explanations, interactive, very useful
- one of the best courses I ever joined! I am impressed how great you worked together as a team, how interactive it was designed and how fast you can adjust to problems/questions, etc. This is a really great way to keep everyone on track. The number of helpers emphazises that everyone can get help when needed/wanted. Thanks a lot. 
- Timing of the course was also great! from 9 to 13u really allows us to learn well what we discuss but then we can also do some task we have to do within our job/position. 
- I followed this course a few years ago and at that time I did not have any experience with R. Now I have much more experience with R and going through the basics which is very useful



## 📚 Resources
- [cheat sheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
- [Precedence of operators in R](https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Infix-and-prefix-operators)
- [Post-workshop survey](https://carpentries.typeform.com/to/UgVdRQ?slug=2021-10-18-dc-socsci-R-nlesc&typeform-source=esciencecenter-digital-skills.github.io )
- [data carpentry lesson](https://datacarpentry.org/r-socialsci/04-ggplot2/index.html)
- [rrefine package](https://cran.r-project.org/web/packages/rrefine/vignettes/rrefine-vignette.html)
- [refinr]()
- [Guide for best practices](https://guide.esciencecenter.nl/#/)


```r=
interviews_plotting <- interviews %>%
  ## pivot wider by items_owned
  separate_rows(items_owned, sep = ";") %>%
  ## if there were no items listed, changing NA to no_listed_items
  replace_na(list(items_owned = "no_listed_items")) %>%
  mutate(items_owned_logical = TRUE) %>%
  pivot_wider(names_from = items_owned, 
              values_from = items_owned_logical, 
              values_fill = list(items_owned_logical = FALSE)) %>%
  ## pivot wider by months_lack_food
  separate_rows(months_lack_food, sep = ";") %>%
  mutate(months_lack_food_logical = TRUE) %>%
  pivot_wider(names_from = months_lack_food, 
              values_from = months_lack_food_logical, 
              values_fill = list(months_lack_food_logical = FALSE)) %>%
  ## add some summary columns
  mutate(number_months_lack_food = rowSums(select(., Jan:May))) %>%
  mutate(number_items = rowSums(select(., bicycle:car)))
```
Have you run this code succesfully?
| Name  |:heavy_check_mark: or :x: |
|-------|-|
|Fariha |:heavy_check_mark: |
|Tobias| :heavy_check_mark:|
|Jing| :heavy_check_mark:|
|Janetta|:heavy_check_mark: |
|Phuong| :heavy_check_mark:|
|Nadine|:heavy_check_mark:|
|Xudong| :heavy_check_mark:|
|Asif|:heavy_check_mark: |
|Richie|:heavy_check_mark: |
|Sanne| :cat:|
|Ilona|:heavy_check_mark:|
|Siqi| :heavy_check_mark:|
|Marietheres|:heavy_check_mark:  |
|Diana| :heavy_check_mark:|
|Pichaya| :heavy_check_mark:|
|Asma| |
|Jun| |