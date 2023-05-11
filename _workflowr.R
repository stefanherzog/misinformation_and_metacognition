### workflowr management


# project files
# (in their order of processing)
files <- c("analysis/index.Rmd",
           "analysis/make_data.Rmd",
           "analysis/basic_descriptives.Rmd",
           "analysis/basic_measures.Rmd",
           "analysis/H1_overall_insight.Rmd",
           "analysis/H2_political_antecedents.Rmd",
           "analysis/H3_predictors.Rmd",
           "analysis/robustness_checks.Rmd")


# Building the project website
wflow_build(files = files,
            verbose = TRUE,
            republish = TRUE,
            update = TRUE,
            delete_cache = TRUE,
            dry_run = FALSE)


wflow_use_gitlab(username = "ai_society",
                 repository = "confidence-and-misinformation",
                 domain = "arc-git.mpib-berlin.mpg.de")


# Publishing/updating the project website
wflow_publish(
  files = files,
  republish = TRUE,
  delete_cache = TRUE,
  dry_run = FALSE
)


wflow_git_push()

