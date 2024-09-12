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

# Role 1: Filter and group data by target type.


# Role 2: Count the number of attacks on each target type.


# Role 3: Visualize the attack frequency by target type.