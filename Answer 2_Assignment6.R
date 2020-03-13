rm(list=ls())
# store a sentence into a
a= "I love to play football bcz my favourite sportsperson is Ronaldo bcz I love cars"

#take a subset which has bcz and replace with because
b= gsub("bcz","because",a)

#print b we get an output
b

#output
#I love to play football because my favourite sportsperson is Ronaldo because I love cars"

#Or

#load library
install.packages("stringr", repos='http://cran.us.r-project.org')

library(stringr)

#Replace the word bcz with because
str_replace(string = "I love pets, especially dogs bcz I have 3 dogs", pattern = "bcz", replacement = "because")

#Output
#I love pets, especially dogs because I have 3 dogs
