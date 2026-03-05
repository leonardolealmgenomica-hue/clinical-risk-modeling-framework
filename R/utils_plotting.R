library(ggplot2)

# Function to create forest plot
create_forest_plot <- function(results_df, title_label) {
  
  ggplot(results_df, aes(x = estimate, y = reorder(term, estimate))) +
    geom_point() +
    geom_errorbarh(aes(xmin = conf.low, xmax = conf.high), height = 0.2) +
    geom_vline(xintercept = 1, linetype = "dashed") +
    scale_x_log10() +
    labs(
      x = "Odds Ratio (95% CI, log scale)",
      y = "Predictor",
      title = title_label
    ) +
    theme_classic()
}