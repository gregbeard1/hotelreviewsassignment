#Hotel Reviews Assignment

setwd("Downloads")

library(ggplot2)
library(readxl)
library(dplyr)
library(stringr)




hoteldata <- read_excel("hotel_reviews_with_sentiment_scores.xlsx")


#Visualization 1
ggplot(hoteldata, aes(x = reviews.rating, y = sentiment_score)) +
  geom_point(alpha = 0.4) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Sentiment Score vs. Numeric Rating",
    x = "Numeric Rating",
    y = "Sentiment Score (-1 to +1)"
  ) +
  theme_minimal()


tier_summary <- hoteldata %>%
  group_by(Brand_Tier) %>%
  summarise(
    mean_sentiment = mean(sentiment_score, na.rm = TRUE),
    n_reviews = n()
  )
#Visualization 2
ggplot(hoteldata, aes(x = Brand_Tier, y = sentiment_score)) +
  geom_boxplot() +
  theme_minimal() +
  theme(
    axis.text.x = element_text(size = 6)
  )


hoteldata <- hoteldata %>%
  mutate(
    review_length = str_count(reviews.text, "\\S+")
  )
#Visualization 3
ggplot(hoteldata, aes(x = review_length, y = sentiment_score)) +
  geom_point(alpha = 0.3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Sentiment vs. Review Length",
    x = "Review Length",
    y = "Sentiment Score"
  ) +
  theme_minimal()
