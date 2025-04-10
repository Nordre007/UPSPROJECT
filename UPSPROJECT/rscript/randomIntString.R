random_numbers <- sample(1:457000, 100000, replace = TRUE)

write(random_numbers, file = "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/input/integer.txt", ncolumns = 1)

num_strings <- 100000
string_length_max <- 4

characters <- c(letters)
# Generate 1000 random strings with varying lengths (between 5 and 15 characters)
random_strings <- sapply(1:num_strings, function(x) {
  paste(sample(characters, string_length_max, replace = TRUE), collapse = "")
})

write(random_strings, file = "/h/d1/g/er8863as-s/UPSPROJECT/UPSPROJECT/data/input/strings.txt", ncolumns = 1)

random_numbers <- sample(1:950000, 1000, replace = TRUE)

