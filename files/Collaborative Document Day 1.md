# Collaborative Document Day 1

2021-10-18 Data Carpentry with R.

Welcome to The Workshop Collaborative Document.

This Document is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents.

----------------------------------------------------------------------------

This is the Document for today: [link](https://tinyurl.com/2021-10-18-data-carpentry-R)

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

**There is no need for you to pay attention to everyone's questions in the chat! The helpers will make sure that questions relevant to all will be addressed in a plenary way.**

## 🖥 Workshop website

[Workshop Website](https://esciencecenter-digital-skills.github.io/2021-10-18-dc-socsci-R-nlesc/)

## 🛠 Setup

[Setup Instructions](https://esciencecenter-digital-skills.github.io/2021-10-18-dc-socsci-R-nlesc/setup/)
Alternative for R is to use RStudio cloud https://rstudio.cloud/

## Download files

- [Full Dataset on Figshare](https://ndownloader.figshare.com/articles/6262019/versions/4)
- [SAFI_clean.csv](https://ndownloader.figshare.com/files/11492171)
- [SAFI_messy.xlsx](https://ndownloader.figshare.com/files/11502824)
- [SAFI_dates.xlsx](https://ndownloader.figshare.com/files/11502827)
- [SAFI_openrefine.csv](https://ndownloader.figshare.com/files/11502815)

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
|12:30	| Wrap-up and post-workshop Survey 
|13:00	| END 

## 🧠 Collaborative Notes



| Name  | :heavy_check_mark: or :x: |
|-------|-|
| Antonio     | |
| Asif	      |:heavy_check_mark: |
| Ahmed       | |
| Asma	      | :heavy_check_mark:|
| Dharani	  | |
| Diana	      |:heavy_check_mark: |
| Diede	      |:heavy_check_mark: |
| Elizabeth	  | |
| Fariha      |:heavy_check_mark:|
|        | |
| Fatemeh     | |
| Hongbo      | |
| Ilona       | :heavy_check_mark:|
| Janetta     | :heavy_check_mark: | 
| Jun         | | 
| Komal       | | 
| Jing        | :heavy_check_mark:|
| Li          | | 
| Marietheres | :heavy_check_mark:| 
| Muhammed    | | 
| Nadine      | :heavy_check_mark:| 
| Paula       | | 
| Phuong      | :heavy_check_mark:|
| Pichaya     | |
| Richie      | :heavy_check_mark:|
| Russ        | :heavy_check_mark:| 
| Sanne       |:heavy_check_mark: | 
| Sara        | | 
| Shaila      | | 
| Shannia     | | 
| Siqi        | :heavy_check_mark:| 
| Sonia       | :heavy_check_mark:|| 
| Sophie      | | 
| Tamara      | | 
| Tobias      |:heavy_check_mark: | 
| Xudong      | :heavy_check_mark:|
| Xulan       | | 
| Valentina   |:heavy_check_mark:|


#### Exercise Excel challenges (silent docing, 5 min)
- Do you use spreadsheets in your research?
- Have you accidently done something in the spreadsheet that made you frustrated or sad? What was it?
- Fariha: Yes of course, I was trying to put a dot on the data entry (like 2.3) but then I came up with the idea that I have to enter it like 2,3
- Nadine: Yes, nothing major to report yet, but I will be dealing with larger datasets in the future where I expect more challenges.
- Ilona: I use excel sometimes. No major frustrating events yet. (always save before trying something so you can go back when shit hits the fan)
- Diede: Yes, I use excel  a lot but just to store data, no major frustrations yet
- Tobias: I use excel to organize my data and to "pre" sort it. However I often loose the overview of my data when I have to many data sets/experiments
- Jing: Yes, I use Excel and WPS for spreadsheets a lot; The chart generated by excel is very difficult to change the format as I want.
- Sonia: I use spreadsheets to organise the literature and to do a first pass on coding interviews and ethnographic data - mainly input. I get frustrated in the sense that I am sure I am not using all the functions (but I don't know what I don't know) 
- Asif: Yes I do. Sometimes it happened that I had duplicate values that I didn't clean.
- Janetta: Yes I use excel a lot. Large frustration is transpose large datafile, there are often not enough columns available
- Sanne: I use it a lot (for large datasets). I am most frustrated when I did not save my syntax/macro's (in Access)/do not know the correct way to save all the steps. I mainly use excel to be able to read in data with other programmes (like qgis/r), but work in access.
- Jun: Yes, I use excel a lot
- Marietheres: My data is often summing up in excel sheets. However, I do not have big data sets. Anyhow, excel figures need several adjustments until they look representable
- I use excel spreadsheets mostly for storing data. Most frustrating to me is try to figure out how others cleaned their data in excel, difficult to follow... 
- Yes, I do use spreadsheets for collecting data. 
- Yes, i use Excel.

#### Three rules for *Tidy Data*
1. Each variable must have its own column.
2. Each observation must have its own row.
3. Each value must have its own cell.

![tidy data](https://www.openscapes.org/img/blog/tidydata/tidydata_1.jpg)

#### Exercise Messy Data (breakout rooms of 3, 15 minutes)
- one person shares their screen
- one person takes notes
- one person will report back

Open up the `SAFI_messy.xlsx` in a spreadsheet program. Notice that there are two tabs. Two researchers conducted the interviews, one in Mozambique and the other in Tanzania. They both structured their data tables in a different way. Now, you’re the person in charge of this project and you want to be able to start analyzing the data.

In your team of three identify what is wrong with this spreadsheet. Discuss the steps you would need to take to clean up the two tabs, and to put them all together in one spreadsheet.

Important Do not forget our first piece of advice, to create a new file (or tab) for the cleaned data, never modify your original (raw) data.

Write down below problems with the spreadsheet and how to fix them.

After you go through this exercise, we’ll discuss as a group what was wrong with this data and how you would fix it.

#### breakout room 1
- Mozambique:
    - One table instead of 3 tables 
    - Livestock table: 2nd column can be divided into 2 columns (type and number)
    - Livestock table: 2 columns missing of look_after_(oxen and goats) add looked value 
    - household 2 and 4, no poultry in column 2 but in column 3 'yes'
    - Plots table: mixing values in columns - add column: summer use
    - Dwelling table: typos
    - Change colour coding to yes/no column for barn
    - -999: mistaken values
- Tanzania:
    - Same key-ids might be confusing, use a UUID or add 'M' and 'T' for respective key-ids
#### breakout room 2
- Problem 1: Mo: not clear how to connect the 3 tables in current state
- Create new empty excel sheet
- Take stock of different variables across two tabs
- Determine if these variables should be alphabetical or numerical
- Add column for notes to accomodate for differences in data entry
- Add column for country
- Create unique ID across tabs for each observation
- Check for and standardize consistencies of missing data
- Add separate variable for categories that are now color-coded
- Standardize spelling

#### breakout room 3
- one table instead of three tables, they share the same key id
- values should be named and spelled the same
- no spaces in a value
- not combining variables by using a color
- not combining categorical and numeric variables in one variable
- use of a consistent value for missing values or use a data dictionary
- "-" meaning of some variables are unclear

#### breakout room 4
Spreadsheet 1:
1. Variables seperated for the same keys
2. "include barn" variable is indicated by hihglights rather than a separate column
3. For one of the key_ids the rooms is indicated by -99 which is likely a typo
4. There should be separate columns for each type of livestock the number that is owned
5. The "water use"column values are not uniform and switch between numeric and text values, the spelling is alos not consistent
6. One key id under "plots"has a value of -999 which is likely to be another typo.
7. Misspelling of "the ëarth "value" under the column "floor type"
8. Key ID 10 does not have any data entry for the livestock section
9. Under the plots column there is no value for key_id 5.
10. For key id 2 under water use we see annotations within the value, this should be separated.
 
Spreadsheet2:
1. "includes cowshed" should be a separate variable/column.
2. a lot of missing values under the "livestock" section.
3. For several key_ids the total column has wrong calculations.
4. empty cells should be filled with a value: "0" for instance
5. for consistency, entries should all be in number format (yes, no entries aren't quantifiable and would lead to errors in the column "total")


#### breakout room 5
- Information seperated in different sheets.
- different typing.
- Wield Error of data, such as -99.
- Inconsistent format.
#### breakout room 6
we were mainly trying to "fix" the data, sorry. 

That's okay! Thanks for letting us know :)

## Issues identified
- Multiple tables in the same spreadsheet -> use variables in columns
- Dataset is missing documentation (what are the variables?) -> one should define possible values for a given column to "enforce" choice 
- Mixing data types in the same column, including comments -> comments should be placed somewhere else
- Use colors to convey information -> should use different column
- Tables do not have same number of samples
- Multiple information in same column (e.g. number of animals, list of animals) -> could have only list
- Use keys such as -9999 to label lack of data -> see table below for null values
- Multiple tabs with different countries -> could be included in same table with "country" column
- Include spaces in variable name -> use "good" variable names (see table below)
- Missing descriptive document -> a README text file (e.g. markdown) to explain what all fields mean, should be one for each files in the folder. Could include also units (otherwise in column name).


#### null values
![null values](https://datacarpentry.org/spreadsheets-socialsci/fig/white_table_1.jpg)


### field names
<table align = "left" style = "width =80%; border: 1px solid black;">
<tr>
	<td> <b>Good Name</b></td> <br />
	<td> <b>Good Alternative </b> </td><br />
	<td> <b>Avoid </b></td><br />
</tr>
<tr>
	<td> wall_type </td>
	<td> WallType </td>
	<td> wall type </td>
</tr>
<tr>
	<td> longitude </td>
	<td> GpsLongitude </td>
	<td> gps:Longitude </td>	
</tr>	
<tr>
	<td> gender </td>
	<td> gender </td>	
	<td> M/F </td>
</tr>
<tr>
	<td> Informant_01 </td>
	<td> first_informant</td>
	<td> 1st Inf</td>
</tr>
<tr>
	<td> age_18 </td>
	<td> years18</td>
	<td> 18years</td>
</tr>
</table>

#### Good practices
- Avoid using multiple tables within one spreadsheet.
- Avoid spreading data across multiple tabs (but do use a new tab to record data cleaning or manipulations).
- Record zeros as zeros.
- Use an appropriate null value to record missing data.
- Don’t use formatting to convey information or to make your spreadsheet look pretty.
- Place comments in a separate column.
- Record units in column headers.
- Include only one piece of information in a cell.
- Avoid spaces, numbers and special characters in column headers.
- Avoid special characters in your data.

#### Dates in Excel
![various date formats](https://datacarpentry.org/spreadsheets-socialsci/fig/excel_dates_1.jpg)

## 📋 Open Refine 

### Exercise 1
1. Using faceting, find out how many different `interview_date` values there are in the survey results.
3. Is the column formatted as Text or Date?
4. Use faceting to produce a timeline display for `interview_date`. You will need to use `Edit cells` > `Common transforms` > `To date` to convert this column to dates.
5. During what period were most of the interviews collected?


You can see the history of your changes in Undo/Redo tab on the left side. By cliking on the time point you can see the dataset from that point.

If you have a field with a list of items and the list of elements it's not that esy to work with it. You need to:
- remove special characters, with transform function. `value.replace("[", "").replace("]", "").replace("'","")`
- create advanced text facet (`Facet` > `Custom Text Facets`) then type `value.split(";")` in the expression box.

### Filter and sort
What if you only want to look at the subset of the data?

Column `respondent_roof_type`
Down arrow > `text filter` > type in text `mabat`

### Exercise
1. What roof types are selected by this procedure?
2. How would you restrict this to only one of the roof types?

`gps_lattitude` > down arrow > Sort > numbers
we can choose where to posisions Errors and Blanks

you can select by values of two columns, one after anther 
`gps_longitude` > down arrow > Sort > numbers > **don't select** `sort by this column alone`

Click `Sort` dropdown to manipulate the way the dataset is sorted.

### Scripting
You can export and apply all or some of the transformations to another dataset.
OpenRefine uses [JSON](https://www.json.org/json-en.html)
Undo/Redo > Extract > windows with the steps in JSON format > copy paste the instructions to a text file
To apply transformations
Undo/Redo > Apply > Copy paste form the file you saved it in

### Export data
- share project, when others will also use Open Refine Export (top right) > OpenRefine project
- shere in more interoperable format (xls, csv) Export > Comma-separated value

## Tip / Top (anonymous, don't write your name)
### Tip (what can be improved)
- maybe provide the line number where we can find either exercises and  tick boxes.
- I feel the bit on spreadsheets took a bit long. This could have been covered in quick presentation of 30 minutes maybe.
- I think if the first part (spreadsheets) was a short video to watch and then today we could have started with OpenRefine and spent more time there, it would have been more interesting.

### Top (what went well)
- Pace was good to follow by doing 
- the explantations were really good
- Clear explanations!
- The step by step OpenRefine instructions were nice, very clear.
- Very clear teaching! Thanks
- The pauses for questions were on time, not too late or too soon.
- we got quick replies to our questions and the whole session was so interactive
## 📚 Resources
SAFI (Studying African Farmer-Led Irrigation) is a currently running project which is looking at farming and irrigation methods.
- [About the Dataset](https://datacarpentry.org/socialsci-workshop/data/)
- [Data Documentation Initiative (DDI)](http://www.ddialliance.org/)
- [Nine simple ways to make it easier to (re)use your data](https://ojs.library.queensu.ca/index.php/IEE/article/view/4608)
- [OpenRefine Documentation](https://docs.openrefine.org/)
- [About dates in OpenRefine](https://docs.openrefine.org/manual/exploring#dates)
- [GREL reference](https://docs.openrefine.org/manual/grelfunctions)
- [OpenRefine Traspose the table](https://docs.openrefine.org/manual/transposing)