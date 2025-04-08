
filnamn <- "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/input/integer.txt"

data <- read.table(filnamn)

# Om filen har flera kolumner, välj den du vill analysera
# t.ex. kolumn 1:
tal <- data[[1]]

# Hitta minsta, median och största värde
minsta <- min(tal, na.rm = TRUE)
mellersta <- median(tal, na.rm = TRUE)
storsta <- max(tal, na.rm = TRUE)

# Skriv ut resultaten
cat("Minsta:", minsta, "\n")
cat("Mellersta (median):", mellersta, "\n")
cat("Största:", storsta, "\n")

# Ange sökvägen till din txt-fil
filnamn <- "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/input/strings.txt"

# Läs in filen och anta att varje rad är en sträng
strangar <- readLines(filnamn)

# Ta bort tomma rader om det finns några
strangar <- strangar[strangar != ""]

# Hitta minsta, mellersta och största strängen
minsta <- min(strangar, na.rm = TRUE)
mellersta <- sort(strangar)[length(strangar) %/% 2 + 1]  # Median-strängen
storsta <- max(strangar, na.rm = TRUE)

# Skriv ut resultaten
cat("Minsta strängen:", minsta, "\n")
cat("Mellersta strängen:", mellersta, "\n")
cat("Största strängen:", storsta, "\n")