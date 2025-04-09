output_files <- file.path("UPSPROJECT/data/outputTreeSet/", c(
    "addInt.txt",
    "findSmallInt.txt",
    "findMiddleInt.txt",
    "findBigInt.txt",
    "addString.txt",
    "findSmallString.txt",
    "findMiddleString.txt",
    "findBigString.txt",
    "addPerson.txt",
    "findSmallPerson.txt",
    "findMiddlePerson.txt",
    "findBigPerson.txt"
))

#lista med filer it
input_files <- file.path("UPSPROJECT/data/input/", c(
    "integer.txt",
    "strings.txt",
    "age.txt",
    "name.txt"
))

output_files_hash <- file.path("UPSPROJECT/data/outputHashSet/", c(
    "addInt.txt",
    "findSmallInt.txt",
    "findMiddleInt.txt",
    "findBigInt.txt",
    "addString.txt",
    "findSmallString.txt",
    "findMiddleString.txt",
    "findBigString.txt",
    "addPerson.txt",
    "findSmallPerson.txt",
    "findMiddlePerson.txt",
    "findBigPerson.txt"
))

args <- c(input_files, output_files)
args_hash <- c(input_files, output_files_hash)

args_string_tree <- paste(shQuote(args), collapse = " ")
args_string_hash <- paste(shQuote(args_hash), collapse = " ")

command_tree <- paste("java -cp /h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/ javatester.TreeSetTest", args_string_tree)
command_hash <- paste("java -cp /h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/ javatester.HashSetTest", args_string_hash)

TreemedelvärdeaddInt <- c()
TreemedelvärdeFindsmallInt <- c()
TreemedelvärdeFindMiddleInt <- c()
TreemedelvärdeFindBigInt <- c()

TreemedelvärdeaddString <- c()
TreemedelvärdeFindSmallString <- c()
TreemedelvärdeFindMiddleString <- c()
TreemedelvärdeFindBigString <- c()

TreemedelvärdeaddPerson <- c()
TreemedelvärdeFindSmallPerson <- c()
TreemedelvärdeFindMiddlePerson <- c()
TreemedelvärdeFindBigPerson <- c()

#Hash
HashmedelvärdeaddInt <- c()
HashmedelvärdeFindsmallInt <- c()
HashmedelvärdeFindMiddleInt <- c()
HashmedelvärdeFindBigInt <- c()

HashmedelvärdeaddString <- c()
HashmedelvärdeFindSmallString <- c()
HashmedelvärdeFindMiddleString <- c()
HashmedelvärdeFindBigString <- c()

HashmedelvärdeaddPerson <- c()
HashmedelvärdeFindSmallPerson <- c()
HashmedelvärdeFindMiddlePerson <- c()
HashmedelvärdeFindBigPerson <- c()


for (i in 1:10) {
    
    system(command_tree)

    TreeDataAddInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addInt.txt"))
    TreeTiderAddInt <- as.vector(as.numeric(na.omit(TreeDataAddInt[200:600, 2])))
    TreemedelvärdeaddInt <- c(TreemedelvärdeaddInt, (mean(TreeTiderAddInt, na.rm = T)))

    TreeDataFindSmallInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallInt.txt"))
    TreeTiderFindSmallInt <- as.vector(as.numeric(na.omit(TreeDataFindSmallInt[200:600, 2])))
    TreemedelvärdeFindsmallInt <- c(TreemedelvärdeFindsmallInt, (mean(TreeTiderFindSmallInt, na.rm = T)))

    TreeDataFindMiddleInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleInt.txt"))
    TreeTiderFindMiddleInt <- as.vector(as.numeric(na.omit(TreeDataFindMiddleInt[200:600, 2])))
    TreemedelvärdeFindMiddleInt <- c(TreemedelvärdeFindMiddleInt, (mean(TreeTiderFindMiddleInt, na.rm = T)))

    TreeDataFindBigInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigInt.txt"))
    TreTiderFindBigInt <- as.vector(as.numeric(na.omit(TreeDataFindBigInt[200:600, 2])))
    TreemedelvärdeFindBigInt <- c(TreemedelvärdeFindBigInt, (mean(TreTiderFindBigInt, na.rm = T)))


    TreeDataAddString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addString.txt"))
    TreeTiderAddString <- as.vector(as.numeric(na.omit(TreeDataAddString[200:600, 2])))
    TreemedelvärdeaddString <- c(TreemedelvärdeaddString, (mean(TreeTiderAddString, na.rm = T)))

    TreeDataFindSmallString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallString.txt"))
    TreeTiderFindSmallString <- as.vector(as.numeric(na.omit(TreeDataFindSmallString[200:600, 2])))
    TreemedelvärdeFindSmallString <- c(TreemedelvärdeFindSmallString, (mean(TreeTiderFindSmallString, na.rm = T)))

    TreeDataFindMiddleString<- as.data.frame(read.csv("//h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleString.txt"))
    TreeTiderFindMiddleString <- as.vector(as.numeric(na.omit(TreeDataFindMiddleString[200:600, 2])))
    TreemedelvärdeFindMiddleString <- c(TreemedelvärdeFindMiddleString, (mean(TreeTiderFindMiddleString, na.rm = T)))

    TreeDataFindBigString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigString.txt"))
    TreeTiderFindBigString <- as.vector(as.numeric(na.omit(TreeDataFindBigString[200:600, 2])))
    TreemedelvärdeFindBigString <- c(TreemedelvärdeFindBigString, (mean(TreeTiderFindBigString, na.rm = T)))


    TreeDataAddPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addPerson.txt"))
    TreeTiderAddPerson <- as.vector(as.numeric(na.omit(TreeDataAddPerson[200:600, 2])))
    TreemedelvärdeaddPerson <- c(TreemedelvärdeaddPerson, (mean(TreeTiderAddPerson, na.rm = T)))
    
    TreeDataFindSmallPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallPerson.txt"))
    TreeTiderFindSmallPerson <- as.vector(as.numeric(na.omit(TreeDataFindSmallPerson[200:600, 2])))
    TreemedelvärdeFindSmallPerson <- c(TreemedelvärdeFindSmallPerson, (mean(TreeTiderFindSmallPerson, na.rm = T)))
    
    TreeDataFindMiddlePerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddlePerson.txt"))
    TreeTiderFindMiddlePerson <- as.vector(as.numeric(na.omit(TreeDataFindMiddlePerson[200:600, 2])))
    TreemedelvärdeFindMiddlePerson <- c(TreemedelvärdeFindMiddlePerson, (mean(TreeTiderFindMiddlePerson, na.rm = T)))
    
    TreeDataFindBigPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigPerson.txt"))
    TreeTiderFindBigPerson <- as.vector(as.numeric(na.omit(TreeDataFindBigPerson[200:600, 2])))
    TreemedelvärdeFindBigPerson <- c(TreemedelvärdeFindBigPerson, (mean(TreeTiderFindBigPerson, na.rm = T)))

}

for (i in 1:10){
    #Hash

    system(command_hash)
    
    dataaddInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addInt.txt"))
    tideraddInt <- as.vector(as.numeric(na.omit(dataaddInt[200:600, 2])))
    HashmedelvärdeaddInt <- c(HashmedelvärdeaddInt, (mean(tideraddInt, na.rm = T)))

    dataFindSmallInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallInt.txt"))
    tiderFindSmallInt <- as.vector(as.numeric(na.omit(dataFindSmallInt[200:600, 2])))
    HashmedelvärdeFindsmallInt <- c(HashmedelvärdeFindsmallInt, (mean(tiderFindSmallInt, na.rm = T)))

    dataFindMiddleInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddleInt.txt"))
    tiderFindMiddleInt <- as.vector(as.numeric(na.omit(dataFindMiddleInt[200:600, 2])))
    HashmedelvärdeFindMiddleInt <- c(HashmedelvärdeFindMiddleInt, (mean(tiderFindMiddleInt, na.rm = T)))

    dataFindBigInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigInt.txt"))
    tiderFindBigInt <- as.vector(as.numeric(na.omit(dataFindBigInt[200:600, 2])))
    HashmedelvärdeFindBigInt <- c(HashmedelvärdeFindBigInt, (mean(tiderFindBigInt, na.rm = T)))


    dataaddString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addString.txt"))
    tideraddString <- as.vector(as.numeric(na.omit(dataaddString[200:600, 2])))
    HashmedelvärdeaddString <- c(HashmedelvärdeaddString, (mean(tideraddString, na.rm = T)))

    dataFindSmallString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallString.txt"))
    tiderFindSmallString <- as.vector(as.numeric(na.omit(dataFindSmallString[200:600, 2])))
    HashmedelvärdeFindSmallString <- c(HashmedelvärdeFindSmallString, (mean(tiderFindSmallString, na.rm = T)))

    dataFindMiddleString<- as.data.frame(read.csv("//h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddleString.txt"))
    tiderFindMiddleString <- as.vector(as.numeric(na.omit(dataFindMiddleString[200:600, 2])))
    HashmedelvärdeFindMiddleString <- c(HashmedelvärdeFindMiddleString, (mean(tiderFindMiddleString, na.rm = T)))

    dataFindBigString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigString.txt"))
    tiderFindBigString <- as.vector(as.numeric(na.omit(dataFindBigString[200:600, 2])))
    HashmedelvärdeFindBigString <- c(HashmedelvärdeFindBigString, (mean(tiderFindBigString, na.rm = T)))


    dataaddperson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addPerson.txt"))
    tideraddPeron <- as.vector(as.numeric(na.omit(dataaddperson[200:600, 2])))
    HashmedelvärdeaddPerson <- c(HashmedelvärdeaddPerson, (mean(tideraddPeron, na.rm = T)))
    
    dataFindSmallPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallPerson.txt"))
    tiderFindSmallPerson <- as.vector(as.numeric(na.omit(dataFindSmallPerson[200:600, 2])))
    HashmedelvärdeFindSmallPerson <- c(HashmedelvärdeFindSmallPerson, (mean(tiderFindSmallPerson, na.rm = T)))
    
    dataFindMiddlePerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddlePerson.txt"))
    tiderFindMiddlePerson <- as.vector(as.numeric(na.omit(dataFindMiddlePerson[200:600, 2])))
    HashmedelvärdeFindMiddlePerson <- c(HashmedelvärdeFindMiddlePerson, (mean(tiderFindMiddlePerson, na.rm = T)))
    
    dataFindBigPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigPerson.txt"))
    tiderFindBigPerson <- as.vector(as.numeric(na.omit(dataFindBigPerson[200:600, 2])))
    HashmedelvärdeFindBigPerson <- c(HashmedelvärdeFindBigPerson, (mean(tiderFindBigPerson, na.rm = T)))
}



source("https://fileadmin.cs.lth.se/cs/Education/EDAA35/R_resources.R")

addInt <- c(mean(TreemedelvärdeaddInt), confidenceInterval(TreemedelvärdeaddInt, confidenceLevel=0.95), TreemedelvärdeaddInt)
write.csv(addInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addInt.txt")

findSmallInt <- c(mean(TreemedelvärdeFindsmallInt), confidenceInterval(TreemedelvärdeFindsmallInt, confidenceLevel=0.95), TreemedelvärdeFindsmallInt)
write.csv(findSmallInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallInt.txt")

findMiddleInt <- c(mean(TreemedelvärdeFindMiddleInt), confidenceInterval(TreemedelvärdeFindMiddleInt, confidenceLevel=0.95), TreemedelvärdeFindMiddleInt)
write.csv(findMiddleInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddleInt.txt")

findBigInt <- c(mean(TreemedelvärdeFindBigInt), confidenceInterval(TreemedelvärdeFindBigInt, confidenceLevel=0.95), TreemedelvärdeFindBigInt)
write.csv(findBigInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigInt.txt")

addString <- c(mean(TreemedelvärdeaddString), confidenceInterval(TreemedelvärdeaddString, confidenceLevel=0.95), TreemedelvärdeaddString)
write.csv(addString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addString.txt")

findSmallString <- c(mean(TreemedelvärdeFindSmallString), confidenceInterval(TreemedelvärdeFindSmallString, confidenceLevel=0.95), TreemedelvärdeFindSmallString)
write.csv(findSmallString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallString.txt")

findMiddleString <- c(mean(TreemedelvärdeFindMiddleString), confidenceInterval(TreemedelvärdeFindMiddleString, confidenceLevel=0.95), TreemedelvärdeFindMiddleString)
write.csv(findMiddleString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddleString.txt")

findBigString <- c(mean(TreemedelvärdeFindBigString), confidenceInterval(TreemedelvärdeFindBigString, confidenceLevel=0.95), TreemedelvärdeFindBigString)
write.csv(findBigString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigString.txt")

addPerson <- c(mean(TreemedelvärdeaddPerson), confidenceInterval(TreemedelvärdeaddPerson, confidenceLevel=0.95), TreemedelvärdeaddPerson)
write.csv(addPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addPerson.txt")

findSmallPerson <- c(mean(TreemedelvärdeFindSmallPerson), confidenceInterval(TreemedelvärdeFindSmallPerson, confidenceLevel=0.95), TreemedelvärdeFindSmallPerson)
write.csv(findSmallPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallPerson.txt")

findMiddlePerson <- c(mean(TreemedelvärdeFindMiddlePerson), confidenceInterval(TreemedelvärdeFindMiddlePerson, confidenceLevel=0.95), TreemedelvärdeFindMiddlePerson)
write.csv(findMiddlePerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddlePerson.txt")

findBigPerson <- c(mean(TreemedelvärdeFindBigPerson), confidenceInterval(TreemedelvärdeFindBigPerson, confidenceLevel=0.95), TreemedelvärdeFindBigPerson)
write.csv(findBigPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigPerson.txt")

#Hash

addInt <- c(mean(HashmedelvärdeaddInt), confidenceInterval(HashmedelvärdeaddInt, confidenceLevel=0.95), HashmedelvärdeaddInt)
write.csv(addInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/addInt.txt")

findSmallInt <- c(mean(HashmedelvärdeFindsmallInt), confidenceInterval(HashmedelvärdeFindsmallInt, confidenceLevel=0.95), HashmedelvärdeFindsmallInt)
write.csv(findSmallInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findSmallInt.txt")

findMiddleInt <- c(mean(HashmedelvärdeFindMiddleInt), confidenceInterval(HashmedelvärdeFindMiddleInt, confidenceLevel=0.95), HashmedelvärdeFindMiddleInt)
write.csv(findMiddleInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findMiddleInt.txt")

findBigInt <- c(mean(HashmedelvärdeFindBigInt), confidenceInterval(HashmedelvärdeFindBigInt, confidenceLevel=0.95), HashmedelvärdeFindBigInt)
write.csv(findBigInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findBigInt.txt")

addString <- c(mean(HashmedelvärdeaddString), confidenceInterval(HashmedelvärdeaddString, confidenceLevel=0.95), HashmedelvärdeaddString)
write.csv(addString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/addString.txt")

findSmallString <- c(mean(HashmedelvärdeFindSmallString), confidenceInterval(HashmedelvärdeFindSmallString, confidenceLevel=0.95), HashmedelvärdeFindSmallString)
write.csv(findSmallString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findSmallString.txt")

findMiddleString <- c(mean(HashmedelvärdeFindMiddleString), confidenceInterval(HashmedelvärdeFindMiddleString, confidenceLevel=0.95), HashmedelvärdeFindMiddleString)
write.csv(findMiddleString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findMiddleString.txt")

findBigString <- c(mean(HashmedelvärdeFindBigString), confidenceInterval(HashmedelvärdeFindBigString, confidenceLevel=0.95), HashmedelvärdeFindBigString)
write.csv(findBigString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findBigString.txt")

addPerson <- c(mean(HashmedelvärdeaddPerson), confidenceInterval(HashmedelvärdeaddPerson, confidenceLevel=0.95), HashmedelvärdeaddPerson)
write.csv(addPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/addPerson.txt")

findSmallPerson <- c(mean(HashmedelvärdeFindSmallPerson), confidenceInterval(HashmedelvärdeFindSmallPerson, confidenceLevel=0.95), HashmedelvärdeFindSmallPerson)
write.csv(findSmallPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findSmallPerson.txt")

findMiddlePerson <- c(mean(HashmedelvärdeFindMiddlePerson), confidenceInterval(HashmedelvärdeFindMiddlePerson, confidenceLevel=0.95), HashmedelvärdeFindMiddlePerson)
write.csv(findMiddlePerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findMiddlePerson.txt")

findBigPerson <- c(mean(HashmedelvärdeFindBigPerson), confidenceInterval(HashmedelvärdeFindBigPerson, confidenceLevel=0.95), HashmedelvärdeFindBigPerson)
write.csv(findBigPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputHashSet/findBigPerson.txt")



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
 


run_welch_test(TreemedelvärdeaddInt, HashmedelvärdeaddInt, label = "addInt")
run_welch_test(TreemedelvärdeFindsmallInt, HashmedelvärdeFindsmallInt, label = "FindSmallInt")
run_welch_test(TreemedelvärdeFindsmallInt, HashmedelvärdeFindMiddleInt, label = "FindMiddleInt")
run_welch_test(TreemedelvärdeFindBigInt, HashmedelvärdeFindBigInt, label = "FindBigInt")

run_welch_test(TreemedelvärdeaddString, HashmedelvärdeaddString, label = "addString")
run_welch_test(TreemedelvärdeFindSmallString, HashmedelvärdeFindSmallString, label = "FindSmallString")
run_welch_test(TreemedelvärdeFindMiddleString, HashmedelvärdeFindSmallString, label = "FindMiddleString")
run_welch_test(TreemedelvärdeFindBigString, HashmedelvärdeFindBigString, label = "FindBigString")

run_welch_test(TreemedelvärdeaddPerson, HashmedelvärdeaddPerson, label = "addPerson")
run_welch_test(TreemedelvärdeFindSmallPerson, HashmedelvärdeFindSmallPerson, label = "FindSmallPerson")
run_welch_test(TreemedelvärdeFindMiddlePerson, HashmedelvärdeFindMiddlePerson, label = "FindMiddlePerson")
run_welch_test(TreemedelvärdeFindBigPerson, HashmedelvärdeFindBigPerson, label = "FindBigPerson")


