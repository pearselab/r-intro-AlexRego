################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

# cat - converts character vectors, concatenates them in a single vector, and then outputs them
cat(1,2,'a')

# cbind - combines sequences of vector/matrix/df
cbind(1:26,letters)

#col, row - returns matrix of integers indicating column number in a matrix
row(my.mat)

# cut - divides range of vector into intervals by break argument
Z <- rnorm(10000)
table(cut(Z, breaks= -6:6))
# assigns number of integers to a particular range
# for interval (-3,-2) there are 223 counts

# diff - returns differences between numbers, lag indicates if numbers in list will be skipped over by lag amount
diff(1:10, 2)
# finds difference between 1, 3; 3,5; etc.
# should all be a difference of 2

#dim - returns dimension of object
dim(my.mat)
# returns dimensions of matrix 5 x 5

#rownames, colnames, names - returns names assigned to row,column,etc.
rownames(my.mat)
# returns NULL because no row names have been assigned

# expand.grid - Creates dataframe with all combination of supplied vectors

# eigen - computes eigenvalues/vectors of numeric or complex matrices
# %*% - multiplies matrices
# lower/upper.tri - finds lower/upper triangle
# diag - extracts or replaces diagonal of matrix

# gl - generate factors by specifying pattern of levels
## First control, then treatment:
gl(2, 8, labels = c("Control", "Treat"))
## 20 alternating 1s and 2s
gl(2, 1, 20)
## alternating pairs of 1s and 2s
gl(2, 2, 20)

# identical - tests exact equality between objects

# image - displays grid with colors specified in arguments

# library - loads installed packages
library("rjags")

# length - finds length of any object or matrix
length(my.mat) #outputs 25

# jitter - adds small variability to numbers that are input
jitter(my.mat) # returns 1:25, but vary from whole integer by small amount

# ls - returns vector of names of objects in environment
# rm(list=ls()) removes objects in environment

# mean, median, max, min - finds corresponding values for numbers input

# paste - prints list after converting to character

# read.csv/table, write.csv/table - reads in and writes csv/tables from/to specified path








################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."
