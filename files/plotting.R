rm(list=ls())

library(tidyverse)
library(here)
library(lubridate)

interviews <- read_csv(here("data", "SAFI_clean.csv"), 
                       na = "NULL")

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

## elements of a ggplot chart
# 1. Data
# 2. Aesthetic mapping (aes)
#  - describes how to map variables to graphics
#  - determines the visual attributes of the data
# 3. geometric objects (geom)
#  - determines how values are rendered graphically 
#  - as bars: geom_bar, geom_point, geom_line

# <DATA> %>% 
#   ggplot(aes(<MAPPINGS>)) +
#   <GEOM_FUNCTION>()

interviews_plotting %>% 
  ggplot() # first step in plotting

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) #provide the mapping

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_point() # render the graphics

interviews_plot <- interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items))

interviews_plot +
  geom_point()

# let's avoid overplotting by changing the transparency of the points
interviews_plot <- interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_point(alpha = 0.5)

interviews_plot  

# change the size of the points based on the number of datapoints  
interviews_plot <- interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_count(alpha = 0.5)

interviews_plot  
  
# slightly jitter the position of each point to avoid overplotting
interviews_plot <- interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_jitter(width = .2, 
              height = .2,
              color = "blue")

interviews_plot    

interviews_plotting %>% 
  ggplot(aes(x = no_membrs, y = number_items)) +
  geom_count(aes(color = village))