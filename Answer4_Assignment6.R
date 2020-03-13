#First go to the above-mentioned website and register and become a patron to the OMDB account. Now we get access to the API Key using that we implement the following functions.

#Install libraries
install.packages('jsonlite', dependencies=TRUE, repos='http://cran.rstudio.com/')
library(jsonlite)
install.packages(c('devtools','curl'))
library(devtools)

devtools::install_github("hrbrmstr/omdbapi")
library(omdbapi)
library(dplyr)
#load the api key URLs
url_sw4 <- "http://www.omdbapi.com/?i=tt3896198&apikey=b162c9e"
url_sw3 <- "http://www.omdbapi.com/?i=tt3896198&h=600&apikey=b162c9e"
url_sw5 <- "http://www.omdbapi.com/apikey.aspx?VERIFYKEY=fdf9eca5-d487-4b59-a2c8-de5a93d16af4"

sw4 <- fromJSON(url_sw4)
sw3 <- fromJSON(url_sw3)
sw5 <- fromJSON(url_sw5)
#view sw4 and sw3
sw4
sw4[["Title"]]
sw4$Year
#write an expression
sw4$Year >sw4$Year
