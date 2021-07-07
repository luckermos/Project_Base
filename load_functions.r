load_functions <- function() {
  funct <- list.files("functions")
  local <- paste0("functions/", funct)
  invisible(lapply(local, source))
}