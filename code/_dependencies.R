# install.packages("devtools")
#! devtools::install_github("craddm/metaSDT")


# load packages
if (!require("pacman")) install.packages("pacman"); library(pacman)

p_load(
  assertr,
  assertthat,
  sessioninfo,
  readr,
  testthat,
  estimatr,
  skimr,
  tidyverse,
  cowplot,
  knitr,
  ggthemes,
  scoring,
  yardstick,
  DescTools,
  broom,
  scales,
  mirt,
  glue,
  scales,
  here,
  GGally,
  apaTables,
  naniar,
  purrr,
  ggpubr,
  hrbrthemes,
  viridis,
  runjags,
  bayestestR,
  ggExtra,
  ggstatsplot,
  ggdist,
  see,
  mcmcr,
  coda,
  BayesFactor
)

session_info() %>% 
  write_lines(here("output/session_info.txt"))

fnc_outlier <- function(x) {
  iqr <- IQR(x, na.rm = TRUE)
  quartiles_1_3 <- quantile(x, probs = c(.25, .75), na.rm = TRUE)
  acceptable <- c(quartiles_1_3["25%"] - 1.5 * iqr,
                  quartiles_1_3["75%"] + 1.5 * iqr)
  names(acceptable) <- c("lower", "upper")
  !assertr::within_bounds(lower.bound = acceptable["lower"], upper.bound = acceptable["upper"])(x)
}

source(here::here("code/measures.R"))

theme_set(theme_minimal_grid())


n_boot <- 4999


knitr::opts_chunk$set(
  echo = TRUE,
  message = FALSE,
  warning = TRUE,
  autodep = TRUE,
  cache = FALSE
)

