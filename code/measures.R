# following: https://tidymodels.github.io/yardstick/articles/custom-metrics.html

# require the packages: pROC, testthat

brier_vec <- function(truth, estimate, na_rm = TRUE, ...) {
  # `estimate` needs to be a probability
  brier_impl <- function(truth, estimate) {
    
    #expect_equal(length(truth), length(estimate))
    
    # check that the ground truth is either 0 or 1
    expect_true(all(truth %in% c(0, 1)))
    
    # check that confidence is equal or less than 1
    lapply(estimate, expect_lte, 1)
    
    # and equal or larger than 0
    lapply(estimate, expect_gte, 0)
    
    # calculate Brier score
    mean((truth - estimate) ^ 2)
  }
  
  metric_vec_template(
    metric_impl = brier_impl,
    truth = truth,
    estimate = estimate,
    na_rm = na_rm,
    cls = "numeric",
    ...
  )
}



DI_prime_vec <- function(truth, estimate, na_rm = TRUE, ...) {
  # `estimate` needs to be a probability
  DI_prime_impl <- function(truth, estimate) {
    
    # check that the ground truth is either 0 or 1
    expect_true(all(truth %in% c(0, 1)))
    
    # check that estimate is equal or less than 1
    lapply(estimate, expect_lte, 1)
    
    # and equal or larger than 0
    lapply(estimate, expect_gte, 0)
    
    # calculate DI prime
    conf_correct_mean <- mean(estimate[truth == 1])
    conf_incorrect_mean <- mean(estimate[truth == 0])
    
    DI_prime <- (conf_correct_mean - conf_incorrect_mean)/sd(estimate)
    
    return(DI_prime)
  }
  
  metric_vec_template(
    metric_impl = DI_prime_impl,
    truth = truth,
    estimate = estimate,
    na_rm = na_rm,
    cls = "numeric",
    ...
  )
}
