library(tidyverse)
library(broom)

# Function to run logistic regression
run_logistic <- function(data, outcome, predictors) {
  
  formula <- as.formula(
    paste(outcome, "~", paste(predictors, collapse = " + "))
  )
  
  model <- glm(formula, data = data, family = binomial)
  
  results <- tidy(model, exponentiate = TRUE, conf.int = TRUE) %>%
    filter(term != "(Intercept)")
  
  return(results)
}