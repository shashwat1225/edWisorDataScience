
#removing all the objects in R
rm(list = ls())

#Setting direcctory
setwd("C:/Users/atul/Desktop/Data Science/Assignment 3/data01s2l1")

#Accessing directory
getwd()

#Installing packages(can also be accessed by going on "Tools" -> "Install Packages...")
install.packages("dmm")
# a. Loadiing the csv data from the file "IMDb_data" and skipping the second row
df = read.csv("IMDB_data.csv", header = TRUE)[-2,]
#Header is kept true to keep the column names intact. If header is changed to false, the columns will become rows and in order to remove the second row, we wil have to do [-3,] instead of [-2,]

# b. Extract the unique genres and its count and store in data frame with index key.
unique(df$Genre) #Unique genres
length(unique(df$Genre)) #Count of unique genres
d1= data.frame(unique(df$Genre), length(unique(df$Genre))) #Storing the unique values and the count in the dataframe


# c. Convert the required data types
str(df) #To Identify data type of all the vaiables
df$Title = as.character(df$Title) #From factor to character since the input is string
df$Plot = as.character(df$Plot) #From factor to character since the input is string
df$imdbVotes = as.numeric(df$imdbVotes) #From factor to numeric since the input is in integers
df$Poster = as.character(df$Poster) #From factor to character since the input is string
df$imdbID = as.character(df$imdbID) #From factor to character since the input is string
df$Year = as.character.numeric_version(df$Year) #From factor to numeric version of character since numeric won't be able to take high numeric values, ASSUMING we aren't categorizing movies based on year, which if the case doesn't need to be changed into any othr data type, as factor suffices the data type of categorizing variables

# d. Sort the genre by its name
df= df[order(df$Genre),]

# e. Create new variable whose values should be square of difference between imdbrating and imdbvotes
imdbvote<- as.numeric(as.character(df$imdbVotes)) #creating object storing numeric values of imdbVotes
imdbrating<- as.numeric(as.character(df$imdbRating)) #creating object storing numeric values of imdbRating
df$New_Variable = with(df, (imdbrating-imdbvote)^2)