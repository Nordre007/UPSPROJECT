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

args <- c(input_files, output_files)

args_string <- paste(shQuote(args), collapse = " ")

command <- paste("java -cp /h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/ javatester.TreeSetTest", args_string)

medelvärdeaddInt <- c()
mvec2 <- c()

for (i in 1:10) {
    
    system(command)

    dataaddInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addInt.txt"))
    tideraddInt <- as.vector(as.numeric(na.omit(dataaddInt[200:600, 2])))
    medelvärdeaddInt <- c(medelvärdeaddInt, (mean(tideraddInt, na.rm = T)))

    dataFindSmallInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallInt.txt"))
    tiderFindSmallInt <- as.vector(as.numeric(na.omit(dataFindSmallInt[200:600, 2])))
    medelvärdeFindSmallInt <- c(medelvärdeFindSmallInt, (mean(tiderFindSmallInt, na.rm = T)))

    dataFindMiddleInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleInt.txt"))
    tiderFindMiddleInt <- as.vector(as.numeric(na.omit(dataFindMiddleInt[200:600, 2])))
    medelvärdeFindMiddleInt <- c(medelvärdeFindMiddleInt, (mean(tiderFindMiddleInt, na.rm = T)))

    dataFindBigInt <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigInt.txt"))
    tiderFindBigInt <- as.vector(as.numeric(na.omit(dataFindBigInt[200:600, 2])))
    medelvärdeFindBigInt <- c(medelvärdeFindBigInt, (mean(tiderFindBigInt, na.rm = T)))


    dataaddString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addString.txt"))
    tideraddString <- as.vector(as.numeric(na.omit(dataaddString[200:600, 2])))
    medelvärdeaddString <- c(medelvärdeaddString, (mean(tideraddString, na.rm = T)))

    dataFindSmallString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallString.txt"))
    tiderFindSmallString <- as.vector(as.numeric(na.omit(dataFindSmallString[200:600, 2])))
    medelvärdeFindSmallString <- c(medelvärdeFindSmallString, (mean(tiderFindSmallString, na.rm = T)))

    dataFindMiddleString<- as.data.frame(read.csv("//h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddleString.txt"))
    tiderFindMIddleString <- as.vector(as.numeric(na.omit(dataFindMiddleString[200:600, 2])))
    medelvärdeFindMiddleString <- c(medelvärdeFindMiddleString, (mean(tiderFindMIddleString, na.rm = T)))

    dataFindBigString<- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigString.txt"))
    tiderFindBigString <- as.vector(as.numeric(na.omit(dataFindBigString[200:600, 2])))
    medelvärdeFindBigString <- c(medelvärdeFindBigString, (mean(tiderFindBigString, na.rm = T)))


    dataaddperson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/addPerson.txt"))
    tideraddPeron <- as.vector(as.numeric(na.omit(dataaddperson[200:600, 2])))
    medelvärdeaddPerson <- c(medelvärdeaddPerson, (mean(tideraddPeron, na.rm = T)))
    
    dataFindSmallPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findSmallPerson.txt"))
    tiderFindSmallPerson <- as.vector(as.numeric(na.omit(dataFindSmallPerson[200:600, 2])))
    medelvärdeFindSmallPerson <- c(medelvärdeFindSmallPerson, (mean(tideraddPeron, na.rm = T)))
    
    dataFindMiddlePerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findMiddlePerson.txt"))
    tiderFindMiddlePerson <- as.vector(as.numeric(na.omit(dataFindMiddlePerson[200:600, 2])))
    medelvärdeFindMiddlePerson <- c(medelvärdeFindMiddlePerson, (mean(tiderFindMiddlePerson, na.rm = T)))
    
    dataFindBigPerson <- as.data.frame(read.csv("/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/outputTreeSet/findBigPerson.txt"))
    tiderFindBigPerson <- as.vector(as.numeric(na.omit(dataFindBigPerson[200:600, 2])))
    medelvärdeFindBigPerson <- c(medelvärdeFindBigPerson, (mean(tiderFindBigPerson, na.rm = T)))
    
    

}
source("https://fileadmin.cs.lth.se/cs/Education/EDAA35/R_resources.R")

addInt <- c(mean(medelvärdeaddInt), confidenceInterval(medelvärdeaddInt, confidenceLevel=0.95), medelvärdeaddInt)
write.csv(addInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addInt.txt")

findSmallInt <- c(mean(medelvärdeFindSmallInt), confidenceInterval(medelvärdeFindSmallInt, confidenceLevel=0.95), medelvärdeFindSmallInt)
write.csv(findSmallInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallInt.txt")

findMiddleInt <- c(mean(medelvärdeFindMiddleInt), confidenceInterval(medelvärdeFindMiddleInt, confidenceLevel=0.95), medelvärdeFindMiddleInt)
write.csv(findMiddleInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddleInt.txt")

findBigInt <- c(mean(medelvärdeFindBigInt), confidenceInterval(medelvärdeFindBigInt, confidenceLevel=0.95), medelvärdeFindBigInt)
write.csv(findBigInt, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigInt.txt")

addString <- c(mean(medelvärdeaddString), confidenceInterval(medelvärdeaddString, confidenceLevel=0.95), medelvärdeaddString)
write.csv(addString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addString.txt")

findSmallString <- c(mean(medelvärdeFindSmallString), confidenceInterval(medelvärdeFindSmallString, confidenceLevel=0.95), medelvärdeFindSmallString)
write.csv(findSmallString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallString.txt")

findMiddleString <- c(mean(medelvärdeFindMIddleString), confidenceInterval(medelvärdeFindMIddleString, confidenceLevel=0.95), medelvärdeFindMIddleString)
write.csv(findMiddleString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddleString.txt")

findBigString <- c(mean(medelvärdeFindBigString), confidenceInterval(medelvärdeFindBigString, confidenceLevel=0.95), medelvärdeFindBigString)
write.csv(findBigString, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigString.txt")

addPerson <- c(mean(medelvärdeaddPerson), confidenceInterval(medelvärdeaddPerson, confidenceLevel=0.95), medelvärdeaddPerson)
write.csv(addPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/addPerson.txt")

findSmallPerson <- c(mean(medelvärdeFindSmallPerson), confidenceInterval(medelvärdeFindSmallPerson, confidenceLevel=0.95), medelvärdeFindSmallPerson)
write.csv(findSmallPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findSmallPerson.txt")

findMiddlePerson <- c(mean(medelvärdeFindMiddlePerson), confidenceInterval(medelvärdeFindMiddlePerson, confidenceLevel=0.95), medelvärdeFindMiddlePerson)
write.csv(findMiddlePerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findMiddlePerson.txt")

findBigPerson <- c(mean(medelvärdeFindBigPerson), confidenceInterval(medelvärdeFindBigPerson, confidenceLevel=0.95), medelvärdeFindBigPerson)
write.csv(findBigPerson, "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/statistik/outputTreeSet/findBigPerson.txt")
