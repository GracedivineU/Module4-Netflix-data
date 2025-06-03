# Load necessary libraries
library(tidyverse)  # Includes ggplot2, dplyr, tidyr, readr

# Load the dataset directly from your Desktop path
df <- read_csv("C:/Users/user/Desktop/Module 4/Netflix_shows_movies.csv")

# Split 'listed_in' column into multiple rows
genre_df <- df %>%
  separate_rows(listed_in, sep = ", ") %>%
  count(listed_in, name = "Count", sort = TRUE)

# Select top 10 most common genres
top_genres <- genre_df %>%
  slice_max(order_by = Count, n = 10)

# Plot top genres
ggplot(top_genres, aes(x = Count, y = reorder(listed_in, Count))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Top 10 Most Watched Genres",
    x = "Count",
    y = "Genre"
  ) +
  theme_minimal()

# Save the chart to the Desktop (optional)
ggsave("C:/Users/user/Desktop/Module 4/genre_plot.png")
install.packages("tidyverse")   # This includes ggplot2, dplyr, readr, tidyr, etc.
library(tidyverse)
df <- read_csv("C:/Users/user/Desktop/Module 4/Netflix_shows_movies.csv")
# Split 'listed_in' into multiple rows and count
genre_df <- df %>%
  separate_rows(listed_in, sep = ", ") %>%
  count(listed_in, name = "Count", sort = TRUE)

# Select top 10 genres
top_genres <- genre_df %>%
  slice_max(order_by = Count, n = 10)

# Split 'listed_in' into multiple rows and count
genre_df <- df %>%
  separate_rows(listed_in, sep = ", ") %>%
  count(listed_in, name = "Count", sort = TRUE)

# Select top 10 genres
top_genres <- genre_df %>%
  slice_max(order_by = Count, n = 10)



ggplot(top_genres, aes(x = Count, y = reorder(listed_in, Count))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Top 10 Most Watched Genres",
    x = "Count",
    y = "Genre"
  ) +
  theme_minimal()




