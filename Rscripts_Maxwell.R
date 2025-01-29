## SHINY APPLICATION WITH R WITH MAXWEL OWUSU ##

#1. Analyze: Cleaning, Analysis, and Visualization

library(tidyverse)


#A. Loading and Cleaning the Data

# load the Ghana_Covid19_DailyActive.csv file

library(readr)
Ghana_Covid19_DailyActive <- read_csv("archive (COVID 19)/Ghana_Covid19_DailyActive.csv")
View(Ghana_Covid19_DailyActive)


names(Ghana_Covid19_DailyActive)
[1] "confirmed"            "recovered"            "death"                "date"                 "cumulative_confirmed" "cumulative_recovered"
[7] "cumulative_death"     "active_cases"        


data <- Ghana_Covid19_DailyActive
View(data)


#Inspect the Dataset
Check the structure and summary of the dataset.
str(data)
summary(data)

# Clean the Data
View(data)


# Verify consistency in calculations (e.g., active_cases):
data$calculated_active_cases <- data$cumulative_confirmed - data$cumulative_recovered - data$cumulative_death
all(data$active_cases == data$calculated_active_cases) # Should return TRUE



Ghana_Covid19_DailyActive$date <- as.Date(Ghana_Covid19_DailyActive$date, format = "%m/%d/%Y")


#Calculate summary statistics for key variables:

summary_stats <- data.frame(
  Variable = c("Confirmed", "Recovered", "Death", "Active Cases"),
  Mean = c(mean(data$confirmed), mean(data$recovered), mean(data$death), mean(data$active_cases)),
  Median = c(median(data$confirmed), median(data$recovered), median(data$death), median(data$active_cases)),
  SD = c(sd(data$confirmed), sd(data$recovered), sd(data$death), sd(data$active_cases))
)
print(summary_stats)


####NEW #####

#The column names of the dataset:

confirmed: Daily new confirmed positive cases.
recovered: Daily new recoveries.
death: Daily new deaths.
date: Date of record.
cumulative_confirmed: Total confirmed cases up to that date.
cumulative_recovered: Total recoveries up to that date.
cumulative_death: Total deaths up to that date.
active_cases: Total active cases on that date.

#Summarize dataset
# Calculate summary statistics for each numeric column
summary_tidy <- Ghana_Covid19_DailyActive %>%
  summarize(
    Total_Confirmed = sum(confirmed, na.rm = TRUE),
    Total_Recovered = sum(recovered, na.rm = TRUE),
    Total_Deaths = sum(death, na.rm = TRUE),
    Max_Active_Cases = max(active_cases, na.rm = TRUE),
    Mean_Active_Cases = mean(active_cases, na.rm = TRUE)
  )

print(summary_tidy)





  
  



