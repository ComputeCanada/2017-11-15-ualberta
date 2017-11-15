# DC3 Participant Work

# Working with Data collected from: https://goo.gl/forms/kE1mCFAnta0MZs9L2
library(stringr)
library(readr)
library(ggplot2)
library(rebus)

DCpart_data <- read_csv("~/Dropbox/db documents/HomeR Practice/DataCarpentry/DataCarpentryNov17/DataCarpentry Participant Data (Responses) - Form Responses 1.csv")

# Google Forms needs to do something about naming questions.
names(DCpart_data)
# Clearly, we need to rename these columns
names(DCpart_data)[1:4]
names(DCpart_data) <- c("Timestamp", "Pets", "WakeUp", "Birthday", "FavFood", "ChocIClike", "WaterPerDay", "StinkLoc", "Movies", "Bedtime", "Raccoon", "MoviesPerMonth", "Woodchuck", "MomBday", "AbBorn")

names(DCpart_data)

?read_csv

# Uncomment this line and add the col_names directly to the dataframe when you read it in.
# DCpart_data <- read_csv("~/Dropbox/db documents/HomeR Practice/DataCarpentry/DataCarpentryNov17/DataCarpentry Participant Data (Responses) - Form Responses 1.csv", col_names = ...)

# Let's take a look at the structure of DCpart_data
str(DCpart_data)
# We have a problem. What is it? Look back at the ?read_csv function

# DCpart_data <- read_csv("~/Dropbox/db documents/HomeR Practice/DataCarpentry/DataCarpentryNov17/DataCarpentry Participant Data (Responses) - Form Responses 1.csv", col_names = ...)

DCpart_data$Time <- str_split(DCpart_data$Timestamp, pattern = " ", simplify = TRUE)
DCpart_data$Date <- DCpart_data$Time[,1]
DCpart_data$Time <- DCpart_data$Time[,2]
DCpart_data$Date <- as.Date(DCpart_data$Date, format = "%m/%d/%Y")

library(lubridate)
DCpart_data$Time <- str_split(DCpart_data$Timestamp, pattern = " ", simplify = TRUE)
DCpart_data$Date <- DCpart_data$Time[,1]
DCpart_data$Time <- DCpart_data$Time[,2]

DCpart_data$Date <- mdy(DCpart_data$Date)
DCpart_data$Time <- hms(DCpart_data$Time)
DCpart_data$Timestamp <- mdy_hms(DCpart_data$Timestamp)

# Some potentially useful functions.
toupper("my dog has fleas")
tolower("MY DOG HAS FLEAS")

gsub(" ", "-", "my dog has fleas")

# Alternative to regular expressions.
# library(rebus) # With the `stringr` package.

timepattern <- START %R% one_or_more(DGT) %R% zero_or_more(":") %R% optional(one_or_more(DGT)) %R% optional(one_or_more(DGT))

bb <- str_extract(c("8:00", "7:30", "8 am", "nine"), timepattern)

bb <- str_replace(bb, pattern = exactly(DGT), replacement = paste(bb, ":00", sep = ""))


# So let's mess with some other variables.

# Some of what we are doing may look like the hard way.

# Let's split into groups to handle individual columns.

# 1) Change the `ChocIClike` column to a factor.

# 2) Change the `Woodchuck` column to a factor.

# 3) Turn the `Movies` column into a consistent format so that the ggplot makes sense.

ggplot(DCpart_data, aes(Movies)) + geom_bar()

# 4) Turn the `Pets` column into a consistent format so that the ggplot makes sense.

ggplot(DCpart_data, aes(Pets)) + geom_bar()

# 5) Turn the `Birthday` column into usable dates.

# 6) Turn the `MomBday` column into usable dates.

# 7) Turn the `WakeUp` column into usable times.
