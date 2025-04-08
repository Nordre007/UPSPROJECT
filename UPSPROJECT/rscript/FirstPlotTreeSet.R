#system("java -cp /h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/ javatester.TreeSetTest UPSPROJECT/data/input/integer.txt UPSPROJECT/data/input/strings.txt UPSPROJECT/data/input/age.txt UPSPROJECT/data/input/name.txt UPSPROJECT/data/outputTreeSet/addInt.txt UPSPROJECT/data/outputTreeSet/findSmallInt.txt UPSPROJECT/data/outputTreeSet/findMiddleInt.txt UPSPROJECT/data/outputTreeSet/findBigInt.txt UPSPROJECT/data/outputTreeSet/addString.txt UPSPROJECT/data/outputTreeSet/findSmallString.txt UPSPROJECT/data/outputTreeSet/findMiddleString.txt UPSPROJECT/data/outputTreeSet/findBigString.txt UPSPROJECT/data/outputTreeSet/addPerson.txt UPSPROJECT/data/outputTreeSet/findSmallPerson.txt UPSPROJECT/data/outputTreeSet/findMiddlePerson.txt UPSPROJECT/data/outputTreeSet/findBigPerson.txt")


#lista med filer ut
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
system(command)

# Funktion som plottar data från en textfil


plotresult <- function(file, start = 1) {   
   data <- read.csv(file)
   data <- data[start:nrow(data),]
   plot(data, type = 'l',
        ylab = "tid i ns",
        xlab = "iterationer")
}



# Plot till skärm (valfritt)
plotresult("UPSPROJECT/data/outputTreeSet/addInt.txt")

# Plot till PNG-fil
png("UPSPROJECT/pdf/pdfTreeSet/addInt.png", width = 800, height = 600)
plotresult("UPSPROJECT/data/outputTreeSet/addInt.txt")
dev.off()