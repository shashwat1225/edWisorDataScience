#!/usr/bin/env python
# coding: utf-8

# In[5]:


#The first thing we need to do is import pymongo. The import should run without any errors to signify that we've done our installation well.
import pymongo
import pandas as pd
from pymongo import MongoClient
import pprint
import json


# In[2]:


get_ipython().system('pip install pymongo')


# In[7]:


client = MongoClient("localhost", 27017)


# In[15]:



Select_db= conn.mydb
Post = select_db.movie


# In[8]:


#Create a collection
Post_data = {
‘title’ : ’python and MongoDB learning’ ,
‘content’ : ’pymongo is fun’,
‘Author’ : ’Ajith’
}


# In[9]:


#Store the above created collection in mydb database
using its instance named Select_db
Result = post.insert_one(post_data)


# In[ ]:





# In[ ]:





# In[ ]:




