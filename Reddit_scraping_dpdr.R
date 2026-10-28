# Install the package (once)
install.packages("RedditExtractoR")


# Load libraries
library(dplyr)
library(RedditExtractoR)

# Ref RedditExtractor
citation("RedditExtractoR")
citation()


# Find and explore potentially suitable subreddits with a relevant keyword
subreddits <- find_subreddits("dpdr")


# Get (max of 1000) most up voted original posts (unrestricted period, all way back)
# To get the unique URLs
# No comments included!
Threads_top <- find_thread_urls(subreddit = "dpdr", sort_by = "top", 
                                period = "all")
View(Threads_top)


# Example for getting the latest postings instead of top postings
Threads_hot <- find_thread_urls(subreddit = "dpdr", sort_by = "hot", 
                               period = "all")

View(Threads_hot)

# Example for getting the latest postings instead of top postings
Threads_new <- find_thread_urls(subreddit = "dpdr", sort_by = "new", 
                                   period = "all")


# Save threads to CSV files for further analyses (e.g., in Orange)
write.csv(Threads_top, "threads.csv", row.names = TRUE)
write.csv(Threads_hot, "threads_hot.csv", row.names = TRUE)
write.csv(Threads_new, "threads_new.csv", row.names = TRUE)

# Save threads to CSV file and hope it doesn't get fucked up
write.csv(
  Threads_hot,
  "threads_hot.csv",
  row.names = TRUE,
  fileEncoding = "UTF-8"
)


write.table(
  df,
  "threads_hot.csv",
  sep = ",",
  row.names = FALSE,
  fileEncoding = "UTF-8",
  qmethod = "double"
)

write.table(df, "threads_hot", sep = ",", row.names = FALSE, fileEncoding = "UTF-8", qmethod = "double")



# Try encoding as UFT-8
write.csv(df, "threads_hot_help.csv", fileEncoding = "UFT-8")

# Save as excel
install.packages('writexl')
library(writexl)
df <- Threads_hot
write_xlsx(df, "~C:/Users/Maibrit/Documents/Master PCPT/These/R Codes.xlsx")
write_xlsx(df, "C:/Users/Maibrit/Documents/Master PCPT/These/R Codes.xlsx")

