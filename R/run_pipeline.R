library(tidyverse)

source("R/utils_modeling.R")
source("R/utils_plotting.R")

# ---- Load data ----
data <- read_csv("data/example_dataset.csv")

# ---- Define variables ----
outcome <- "outcome_variable"

predictors_uni <- c("age", "sex", "bmi", "smoking")
predictors_multi <- c("age", "sex", "smoking")

# ---- Run models ----
uni_results <- run_logistic(data, outcome, predictors_uni)
multi_results <- run_logistic(data, outcome, predictors_multi)

# ---- Save tables ----
write_csv(uni_results, "outputs/univariate_results.csv")
write_csv(multi_results, "outputs/multivariate_results.csv")

# ---- Generate plots ----
plot_uni <- create_forest_plot(uni_results, "Univariate Model")
plot_multi <- create_forest_plot(multi_results, "Multivariate Model")

ggsave("outputs/univariate_forest.png", plot_uni, width = 6, height = 5)
ggsave("outputs/multivariate_forest.png", plot_multi, width = 6, height = 5)