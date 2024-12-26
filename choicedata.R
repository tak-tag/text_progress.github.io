#data generation for choice model
library(tidyverse)
# Set a seed for reproducibility
set.seed(123)

# Generate variables
p1 = rnorm(1000, mean = 10, sd = 2)  # Price: centered around 10 with realistic variation
a1 = rbinom(1000,1, 0.6)  # Advertisement dummy
p2 = rnorm(1000, mean = 11, sd = 3)
a2 = rbinom(1000,1, 0.3)

# Linear combination with meaningful coefficients
z = 1 - 0.5*p1 + 0.3*p2 + 1.5*a1 - 0.8*a2  # Adjust coefficients to reflect plausible relationships

# Pass through the logistic function to get probabilities
pr = 1 / (1 + exp(-z))

# Generate binary outcomes based on probabilities
y1 = rbinom(1000, 1, pr)

# Combine into a data frame
choice_df <- data.frame(y1 = y1, p1 = p1, p2 = p2, a1 = a1, a2 = a2)
summary(choice_df)
choice_df <- choice_df %>% 
  mutate(y2 = ifelse(y1 == 1, 0,1)) %>% 
  select(y1, y2, p1, p2, a1, a2)

head(choice_df)
writexl::write_xlsx(choice_df, path = "data/choice_data.xlsx")

# Display a preview of the data
head(choice_df)
p <- ggplot(choice_df,mapping = aes(x = p, y = y1))
p +geom_point() +
  geom_smooth(method="lm",se = FALSE)
