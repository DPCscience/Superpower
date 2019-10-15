## set default options for Superpower_options:
.onLoad <- function(libname, pkgname) {
  op <- options()
  op.Superpower <- list(
    Superpower.verbose = TRUE,
    Superpower.emm = FALSE,
    Superpower.emm_model = "multivariate",
    Superpower.contrast_type = "pairwise",
    Superpower.plot = FALSE,
    Superpower.alpha_level = .05
  )
  toset <- !(names(op.Superpower) %in% names(op))
  if (any(toset)) options(op.Superpower[toset])
  

  
  invisible()
}