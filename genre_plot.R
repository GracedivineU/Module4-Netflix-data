# libraries
install.packages("tidyverse") 
library(tidyverse)

# Loading the dataset
df <- read_csv("C:/Users/user/Desktop/Module 4/Netflix_shows_movies.csv")

# Splitting 'listed_in' column into multiple rows
genre_df <- df %>%
  separate_rows(listed_in, sep = ", ") %>%
  count(listed_in, name = "Count", sort = TRUE)

# Selecting top 10 most common genres
top_genres <- genre_df %>%
  slice_max(order_by = Count, n = 10)

# Plotting top genres
ggplot(top_genres, aes(x = Count, y = reorder(listed_in, Count))) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Top 10 Most Watched Genres",
    x = "Count",
    y = "Genre"
  ) +
  theme_minimal()

# Saving the chart to the Desktop
ggsave("C:/Users/user/Desktop/Module 4/genre_plot.png")





