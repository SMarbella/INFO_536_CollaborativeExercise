# Global Terrorism Database Collaborative Analysis

# Group 4

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Load the dataset
gtd_data <- read.csv("globalterrorismdb_0718dist.csv", 
                     stringsAsFactors = FALSE)

# Basic data exploration
glimpse(gtd_data)

# Data cleaning
# Counting NA values
sum(is.na(gtd_data$targtype1)) # 0 NAs
sum(is.na(gtd_data$targtype1_txt)) # 0 NAs

sum(is.na(gtd_data$targtype2)) # 170547 NAs
sum(is.na(gtd_data$targtype2_txt)) # 0 NAs

sum(is.na(gtd_data$targtype3)) # 180515 NAs
sum(is.na(gtd_data$targtype3_txt)) # 0 NAs

# Remove NAs

# creating a table/dataframe with success and targtype1 from gtd_data
targtype1 <- gtd_data %>%
  filter(!is.na(targtype1)) %>%
  select(success,targtype1_txt) %>%
  mutate(targtype_no = 1)


# creating a table/dataframe with success and targtype2 from gtd_data
targtype2 <- gtd_data %>%
  filter(!is.na(targtype2)) %>%
  select(success,targtype2_txt) %>%
  mutate(targtype_no = 2)

# creating a table/dataframe with success and targtype3 from gtd_data
targtype3 <- gtd_data %>%
  filter(!is.na(targtype3)) %>%
  select(success,targtype3_txt) %>%
  mutate(targtype_no = 3)

# appending all the targtypes into one table/dataframe
all_targtypes <- rbind(targtype1, setNames(targtype2, names(targtype1)), setNames(targtype3, names(targtype1)))

# renaming the column name to targtype_txt to reflect the grouping
all_targtypes <- all_targtypes %>% 
  rename(target_title = targtype1_txt)

# Role 1: Filter and group data by target type.

data_grouped <- all_targtypes %>%
  group_by(target_title)

# Role 2: Count the number of attacks on each target type.


# Role 3: Visualize the attack frequency by target type.

