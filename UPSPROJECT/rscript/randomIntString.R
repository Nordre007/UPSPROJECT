random_numbers <- sample(1:1000, 1000, replace = TRUE)

write(random_numbers, file = "/h/d2/a/ka2300sk-s/UPSPROJECT/data/integer.txt", ncolumns = 1)


num_strings <- 1000
string_length <- 10

characters <- c(letters, LETTERS, 0:9)
# Generate 1000 random strings with varying lengths (between 5 and 15 characters)
random_strings <- sapply(1:num_strings, function(x) {
  string_length <- sample(5:15, 1)  # Random string length between 5 and 15
  paste(sample(characters, string_length, replace = TRUE), collapse = "")
})

write(random_strings, file = "/h/d2/a/ka2300sk-s/UPSPROJECT/data/strings.txt", ncolumns = 1)