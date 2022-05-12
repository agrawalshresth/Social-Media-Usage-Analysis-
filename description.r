d = read.csv(file <- "C://Users//Aradhana Agrawal//Desktop//Shresth MPSTME//SEM3//PS//Project//train_age_dataset.csv",
    header = TRUE
)

# check if there are any null values in r
x1=is.null(d) #x1 is a temp variable
print(paste("Are there any null values in the dataset? ",x1))

# describing dataPCode
# Find the dimensions
d1 <- dim(d)
print(cat("\nDimension of the dataset: "))
print(d1)

# Find the structure
print(cat("\n\nStructure of the dataset: "))
s <- str(d)

# See the first 6 rows
h <- head(d)
print(cat("\n\nHead of the dataset: "))
print(h)

# See the last 6 rows
t <- tail(d)
print(cat("\n\nTail of the dataset: "))
print(t)

# Find the column names
the_names <- names(d)
print(cat("\nColumn names of the dataset: "))
print(the_names)
