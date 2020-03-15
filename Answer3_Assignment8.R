rm(list=ls())
#Load Libraries
library("RMongo")
#Establish connection with local mongoDB from machine
Conn = mongoDbConnect("mydb","localhost",27017)
#bank.csv is a dataset which is being stored in mongodb using below code.
Post_data = data.table::fread("bank.csv")
My_collection = mongo(collection = "post_data", db=mydb)
My_collection$insert(Post_data)