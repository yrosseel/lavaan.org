qmds <- dir("tutorial", pattern=".qmd")
cat("# all r-code\n", file="tutorial.R")
for (i in seq_along(qmds)) {
  cat(paste("\n# ============= file: ", qmds[i], "=============\n"), file="tutorial.R", append=TRUE)
  qmd <- readLines(paste0("tutorial/",qmds[i]))
  rcod <- knitr::purl(text=qmd)
  cat(rcod, file="tutorial.R", append=TRUE)
  rcod <- ""
}
