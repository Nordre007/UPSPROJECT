run_welch_test <- function(treeset, hashset, label = "test") {
  # T-test
  result <- t.test(treeset, hashset, var.equal = FALSE)

  # Spara t-test resultat
  sink(paste0(label, "_t_test_result.txt"))
  print(result)
  sink()

  # Boxplot
  png(paste0(label, "_boxplot.png"), width = 800, height = 600)
  boxplot(treeset, hashset,
          names = c("TreeSet", "HashSet"),
          main = "Jämförelse av exekveringstider",
          ylab = "Tid (ns)",
          col = c("lightblue", "lightgreen"))
  dev.off()

  return(result)
}
 

# 10 medelvärden från 600 iterationer
treeset_times <- c(811, 802, 790, 830, 799, 815, 820, 809, 800, 795)
hashset_times <- c(420, 425, 418, 430, 412, 435, 428, 419, 421, 416)

run_welch_test(treeset_times, hashset_times, label = "insert_comparison")

# senare: annan data
run_welch_test(other_tree, other_hash, label = "contains_comparison")

