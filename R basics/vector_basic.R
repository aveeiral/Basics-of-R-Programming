myVector <- c(3,4,2,44)
is.numeric(myVector)

v2 <- c(3L, 5L, 88L)
is.numeric(v2)
is.double(v2)
is.character(v2)
is.integer(v2)

# if a vector of mixed d.types is created it will convert 
#it to another type
v3 <- c(3L, 5L, 88L, 7)
# everything opeartes as a vector in r and elements in numeric form
# are stored as double so if mixed data types are used.
# if string and numberic are used in same vector it will be converted
# to a string
#if double and integer are both used in a vector it will be converted
# to double data type


?seq(1, 15, 3)
seq(1, 2, length.out=5)# generate seq of numbers from the given values(start, stop, step)
rep(3, 5)# generates number 3,  5 times
rnorm(2,5)# generates two random numbers

# indexing in vectors starts with 1 so access elements ...
v2[1]
v2[1:3]

v3[c(1,3)]
v3[-2]
v3[c(-2,-1)]







