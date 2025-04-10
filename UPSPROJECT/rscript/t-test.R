

run_welch_test <- function(treeset, hashset, label = "test") {

  cat("Running Welch test for:", label, "\n")
  cat("TreeSet length:", length(treeset), "\n")
  cat("HashSet length:", length(hashset), "\n\n")

  if (length(treeset) < 2 || length(hashset) < 2) {
    warning(paste("Not enough data for Welch test:", label))
    return(NULL)
  }

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
 
TreemedelvärdeaddInt <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/addInt.txt")$x[-(1:3)]
HashmedelvärdeaddInt <- read.csv("UPSPROJECT/data/statistik/outputHashSet/addInt.txt")$x[-(1:3)]

TreemedelvärdeFindsmallInt <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findSmallInt.txt")$x[-(1:3)]
HashmedelvärdeFindsmallInt <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findSmallInt.txt")$x[-(1:3)]

TreemedelvärdeFindMiddleInt <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findMiddleInt.txt")$x[-(1:3)]
HashmedelvärdeFindMiddleInt <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findMiddleInt.txt")$x[-(1:3)]

TreemedelvärdeFindBigInt <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findBigInt.txt")$x[-(1:3)]
HashmedelvärdeFindBigInt <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findBigInt.txt")$x[-(1:3)]


run_welch_test(TreemedelvärdeaddInt, HashmedelvärdeaddInt, label = "addInt")
run_welch_test(TreemedelvärdeFindsmallInt, HashmedelvärdeFindsmallInt, label = "FindSmallInt")
run_welch_test(TreemedelvärdeFindMiddleInt, HashmedelvärdeFindMiddleInt, label = "FindMiddleInt")
run_welch_test(TreemedelvärdeFindBigInt, HashmedelvärdeFindBigInt, label = "FindBigInt")

TreemedelvärdeaddString <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/addString.txt")$x[-(1:3)]
HashmedelvärdeaddString <- read.csv("UPSPROJECT/data/statistik/outputHashSet/addString.txt")$x[-(1:3)]

TreemedelvärdeFindSmallString <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findSmallString.txt")$x[-(1:3)]
HashmedelvärdeFindSmallString <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findSmallString.txt")$x[-(1:3)]

TreemedelvärdeFindMiddleString <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findMiddleString.txt")$x[-(1:3)]
HashmedelvärdeFindSmallString <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findMiddleString.txt")$x[-(1:3)]

TreemedelvärdeFindBigString <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findBigString.txt")$x[-(1:3)]
HashmedelvärdeFindBigString <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findBigString.txt")$x[-(1:3)]

run_welch_test(TreemedelvärdeaddString, HashmedelvärdeaddString, label = "addString")
run_welch_test(TreemedelvärdeFindSmallString, HashmedelvärdeFindSmallString, label = "FindSmallString")
run_welch_test(TreemedelvärdeFindMiddleString, HashmedelvärdeFindSmallString, label = "FindMiddleString")
run_welch_test(TreemedelvärdeFindBigString, HashmedelvärdeFindBigString, label = "FindBigString")

TreemedelvärdeaddPerson <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/addPerson.txt")$x[-(1:3)]
HashmedelvärdeaddPerson <- read.csv("UPSPROJECT/data/statistik/outputHashSet/addPerson.txt")$x[-(1:3)]

TreemedelvärdeFindSmallPerson <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findSmallPerson.txt")$x[-(1:3)]
HashmedelvärdeFindSmallPerson <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findSmallPerson.txt")$x[-(1:3)]

TreemedelvärdeFindMiddlePerson <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findMiddlePerson.txt")$x[-(1:3)]
HashmedelvärdeFindMiddlePerson <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findMiddlePerson.txt")$x[-(1:3)]

TreemedelvärdeFindBigPerson <- read.csv("UPSPROJECT/data/statistik/outputTreeSet/findBigPerson.txt")$x[-(1:3)]
HashmedelvärdeFindBigPerson <- read.csv("UPSPROJECT/data/statistik/outputHashSet/findBigPerson.txt")$x[-(1:3)]

run_welch_test(TreemedelvärdeaddPerson, HashmedelvärdeaddPerson, label = "addPerson")
run_welch_test(TreemedelvärdeFindSmallPerson, HashmedelvärdeFindSmallPerson, label = "FindSmallPerson")
run_welch_test(TreemedelvärdeFindMiddlePerson, HashmedelvärdeFindMiddlePerson, label = "FindMiddlePerson")
run_welch_test(TreemedelvärdeFindBigPerson, HashmedelvärdeFindBigPerson, label = "FindBigPerson")

