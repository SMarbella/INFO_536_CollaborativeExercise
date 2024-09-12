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

sum(is.na(gtd_data$targtype3)) # 0180515 NAs
sum(is.na(gtd_data$targtype3_txt)) # 0 NAs

# Remove NAs
gtd_clean <- gtd_data %>%
  select(targtype1_txt, targtype2_txt, targtype3_txt, targtype1, targtype2, targtype3) %>%
  filter(!is.na(targtype1), !is.na(targtype2), !is.na(targtype3))

glimpse(gtd_clean)

# Role 1: Filter and group data by target type.


# Role 2: Count the number of attacks on each target type.


# Role 3: Visualize the attack frequency by target type.