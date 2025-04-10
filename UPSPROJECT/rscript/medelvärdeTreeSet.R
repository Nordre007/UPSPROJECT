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


for (i in 1:100) {
    
    system(command_tree)

    TreeDataAddInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addInt.txt"))
    TreeTiderAddInt <- as.vector(as.numeric(na.omit(TreeDataAddInt[50:600, 2])))
    TreemedelvärdeaddInt <- c(TreemedelvärdeaddInt, (mean(TreeTiderAddInt, na.rm = T)))

    TreeDataFindSmallInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallInt.txt"))
    TreeTiderFindSmallInt <- as.vector(as.numeric(na.omit(TreeDataFindSmallInt[5:600, 2])))
    TreemedelvärdeFindsmallInt <- c(TreemedelvärdeFindsmallInt, (mean(TreeTiderFindSmallInt, na.rm = T)))

    TreeDataFindMiddleInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleInt.txt"))
    TreeTiderFindMiddleInt <- as.vector(as.numeric(na.omit(TreeDataFindMiddleInt[1:600, 2])))
    TreemedelvärdeFindMiddleInt <- c(TreemedelvärdeFindMiddleInt, (mean(TreeTiderFindMiddleInt, na.rm = T)))

    TreeDataFindBigInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigInt.txt"))
    TreTiderFindBigInt <- as.vector(as.numeric(na.omit(TreeDataFindBigInt[1:600, 2])))
    TreemedelvärdeFindBigInt <- c(TreemedelvärdeFindBigInt, (mean(TreTiderFindBigInt, na.rm = T)))


    TreeDataAddString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addString.txt"))
    TreeTiderAddString <- as.vector(as.numeric(na.omit(TreeDataAddString[1:600, 2])))
    TreemedelvärdeaddString <- c(TreemedelvärdeaddString, (mean(TreeTiderAddString, na.rm = T)))

    TreeDataFindSmallString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallString.txt"))
    TreeTiderFindSmallString <- as.vector(as.numeric(na.omit(TreeDataFindSmallString[10:600, 2])))
    TreemedelvärdeFindSmallString <- c(TreemedelvärdeFindSmallString, (mean(TreeTiderFindSmallString, na.rm = T)))

    TreeDataFindMiddleString<- as.data.frame(read.csv("//h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleString.txt"))
    TreeTiderFindMiddleString <- as.vector(as.numeric(na.omit(TreeDataFindMiddleString[400:600, 2])))
    TreemedelvärdeFindMiddleString <- c(TreemedelvärdeFindMiddleString, (mean(TreeTiderFindMiddleString, na.rm = T)))

    TreeDataFindBigString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigString.txt"))
    TreeTiderFindBigString <- as.vector(as.numeric(na.omit(TreeDataFindBigString[5:600, 2])))
    TreemedelvärdeFindBigString <- c(TreemedelvärdeFindBigString, (mean(TreeTiderFindBigString, na.rm = T)))


    TreeDataAddPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addPerson.txt"))
    TreeTiderAddPerson <- as.vector(as.numeric(na.omit(TreeDataAddPerson[1:600, 2])))
    TreemedelvärdeaddPerson <- c(TreemedelvärdeaddPerson, (mean(TreeTiderAddPerson, na.rm = T)))
    
    TreeDataFindSmallPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallPerson.txt"))
    TreeTiderFindSmallPerson <- as.vector(as.numeric(na.omit(TreeDataFindSmallPerson[5:600, 2])))
    TreemedelvärdeFindSmallPerson <- c(TreemedelvärdeFindSmallPerson, (mean(TreeTiderFindSmallPerson, na.rm = T)))
    
    TreeDataFindMiddlePerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddlePerson.txt"))
    TreeTiderFindMiddlePerson <- as.vector(as.numeric(na.omit(TreeDataFindMiddlePerson[5:600, 2])))
    TreemedelvärdeFindMiddlePerson <- c(TreemedelvärdeFindMiddlePerson, (mean(TreeTiderFindMiddlePerson, na.rm = T)))
    
    TreeDataFindBigPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigPerson.txt"))
    TreeTiderFindBigPerson <- as.vector(as.numeric(na.omit(TreeDataFindBigPerson[5:600, 2])))
    TreemedelvärdeFindBigPerson <- c(TreemedelvärdeFindBigPerson, (mean(TreeTiderFindBigPerson, na.rm = T)))

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



