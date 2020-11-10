install.packages("gtrendsR")
library("gtrendsR")

# Information for NBA
NBA = gtrends("NBA", time = "2014-01-01 2019-12-31")

# Information for NFL 
NFL = gtrends("NFL", time = "2014-01-01 2019-12-31")

# Information for MLB
MLB = gtrends("MLB", time = "2014-01-01 2019-12-31")

NBA$interest_over_time

# Finding max hits for NBA
which.max(NBA$interest_over_time$hits)

# Finding month with max hits for NBA 
NBA$interest_over_time$date[53]

# Finding min hits for NBA 
which.min(NBA$interest_over_time$hits)

# Finding month with min hits for NBA
NBA$interest_over_time$date[9]

# Finding total number of search results for NBA
sum(NBA$interest_over_time$hits)

NFL$interest_over_time

# Finding max hits for NFL 
which.max(NFL$interest_over_time$hits)

# Month with max hits for NFL 
NFL$interest_over_time$date[72]

# Finding min hits for NFL 
which.min(NFL$interest_over_time$hits)

# Month with min hits for NFL 
NFL$interest_over_time$date[6]

# Finding total number of search results for NFL
sum(NFL$interest_over_time$hits)

MLB$interest_over_time

# Finding max hits for MLB 
which.max(MLB$interest_over_time$hits)

# Month with max hits for MLB 
MLB$interest_over_time$date[70]

# Finding min hits for MLB
which.min(MLB$interest_over_time$hits)

# Month with min hits for MLB 
MLB$interest_over_time$date[1]

# Finding total number of search results for MLB
sum(MLB$interest_over_time$hits)

# Finding when NBA is more popular 
which.max(NBA$interest_over_time$hits>MLB$interest_over_time$hits)

#Finding the specific month 
NBA$interest_over_time$date[1]

# Finding when NBA is more popular 
sum(NBA$interest_over_time$hits>MLB$interest_over_time$hits)
