# Hotel Review Sentiment Analysis

## Overview

This project applies text analytics and natural language processing (NLP) techniques to a dataset of hotel customer reviews using R. The objective was to analyze customer sentiment and compare it with structured business data to determine whether written review sentiment aligns with numeric ratings, varies across hotel brand tiers, and is influenced by review length.

## Objectives

- Generate a numeric sentiment score for each hotel review.
- Compare sentiment scores with numeric review ratings.
- Analyze sentiment across different hotel brand tiers.
- Examine the relationship between review length and sentiment.
- Identify patterns that traditional numeric ratings alone may not reveal.

## Tools & Libraries

- R
- tidyverse
- tidytext
- dplyr
- ggplot2
- stringr
- readxl

## Methodology

### Sentiment Analysis
- Generated a sentiment score for each review on a scale from **-1 (Very Negative)** to **+1 (Very Positive)**.
- Added the sentiment score as a new feature for analysis.

### Text Processing
- Tokenized review text using **tidytext**.
- Calculated review length by counting the number of words in each review.

### Data Visualization
Created visualizations to explore relationships between sentiment and structured variables, including:
- Sentiment Score vs. Numeric Rating
- Sentiment Distribution by Brand Tier
- Sentiment vs. Review Length

## Key Findings

- Higher review ratings generally corresponded with more positive written sentiment, although the relationship was weaker than expected.
- Luxury and upscale hotels exhibited slightly higher median sentiment scores, but sentiment distributions overlapped considerably across brand tiers.
- Review length provided additional context for understanding customer opinions and allowed exploration of whether longer reviews expressed stronger sentiment.
- Combining text analytics with structured business data provides deeper insight into customer satisfaction than ratings alone.

## Skills Demonstrated

- Text Analytics
- Natural Language Processing (NLP)
- Sentiment Analysis
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis (EDA)
- Data Visualization
- Business Analytics in R


## Future Improvements

- Compare AI-generated sentiment scores with lexicon-based methods (AFINN, Bing, NRC).
- Build predictive models using review text to estimate customer ratings.
- Perform topic modeling to identify common themes in customer feedback.
- Analyze sentiment by hotel brand and geographic region.

## Author

**Gregory Beard**

Business Analytics | Data Visualization | Machine Learning | R | Python | SQL
