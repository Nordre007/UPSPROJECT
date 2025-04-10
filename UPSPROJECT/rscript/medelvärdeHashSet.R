
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

command_hash <- paste("java -cp /h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/ javatester.HashSetTest", args_string_hash)


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



for (i in 1:100){
    #Hash

    system(command_hash)
    
    dataaddInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addInt.txt"))
    tideraddInt <- as.vector(as.numeric(na.omit(dataaddInt[100:600, 2])))
    HashmedelvärdeaddInt <- c(HashmedelvärdeaddInt, (mean(tideraddInt, na.rm = T)))

    dataFindSmallInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallInt.txt"))
    tiderFindSmallInt <- as.vector(as.numeric(na.omit(dataFindSmallInt[5:600, 2])))
    HashmedelvärdeFindsmallInt <- c(HashmedelvärdeFindsmallInt, (mean(tiderFindSmallInt, na.rm = T)))

    dataFindMiddleInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddleInt.txt"))
    tiderFindMiddleInt <- as.vector(as.numeric(na.omit(dataFindMiddleInt[5:600, 2])))
    HashmedelvärdeFindMiddleInt <- c(HashmedelvärdeFindMiddleInt, (mean(tiderFindMiddleInt, na.rm = T)))

    dataFindBigInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigInt.txt"))
    tiderFindBigInt <- as.vector(as.numeric(na.omit(dataFindBigInt[1:600, 2])))
    HashmedelvärdeFindBigInt <- c(HashmedelvärdeFindBigInt, (mean(tiderFindBigInt, na.rm = T)))


    dataaddString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addString.txt"))
    tideraddString <- as.vector(as.numeric(na.omit(dataaddString[100:600, 2])))
    HashmedelvärdeaddString <- c(HashmedelvärdeaddString, (mean(tideraddString, na.rm = T)))

    dataFindSmallString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallString.txt"))
    tiderFindSmallString <- as.vector(as.numeric(na.omit(dataFindSmallString[5:600, 2])))
    HashmedelvärdeFindSmallString <- c(HashmedelvärdeFindSmallString, (mean(tiderFindSmallString, na.rm = T)))

    dataFindMiddleString<- as.data.frame(read.csv("//h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddleString.txt"))
    tiderFindMiddleString <- as.vector(as.numeric(na.omit(dataFindMiddleString[1:600, 2])))
    HashmedelvärdeFindMiddleString <- c(HashmedelvärdeFindMiddleString, (mean(tiderFindMiddleString, na.rm = T)))

    dataFindBigString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigString.txt"))
    tiderFindBigString <- as.vector(as.numeric(na.omit(dataFindBigString[5:600, 2])))
    HashmedelvärdeFindBigString <- c(HashmedelvärdeFindBigString, (mean(tiderFindBigString, na.rm = T)))


    dataaddperson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/addPerson.txt"))
    tideraddPeron <- as.vector(as.numeric(na.omit(dataaddperson[1:600, 2])))
    HashmedelvärdeaddPerson <- c(HashmedelvärdeaddPerson, (mean(tideraddPeron, na.rm = T)))
    
    dataFindSmallPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findSmallPerson.txt"))
    tiderFindSmallPerson <- as.vector(as.numeric(na.omit(dataFindSmallPerson[1:600, 2])))
    HashmedelvärdeFindSmallPerson <- c(HashmedelvärdeFindSmallPerson, (mean(tiderFindSmallPerson, na.rm = T)))
    
    dataFindMiddlePerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findMiddlePerson.txt"))
    tiderFindMiddlePerson <- as.vector(as.numeric(na.omit(dataFindMiddlePerson[1:600, 2])))
    HashmedelvärdeFindMiddlePerson <- c(HashmedelvärdeFindMiddlePerson, (mean(tiderFindMiddlePerson, na.rm = T)))
    
    dataFindBigPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputHashSet/findBigPerson.txt"))
    tiderFindBigPerson <- as.vector(as.numeric(na.omit(dataFindBigPerson[1:600, 2])))
    HashmedelvärdeFindBigPerson <- c(HashmedelvärdeFindBigPerson, (mean(tiderFindBigPerson, na.rm = T)))
}

source("https://fileadmin.cs.lth.se/cs/Education/EDAA35/R_resources.R")


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


