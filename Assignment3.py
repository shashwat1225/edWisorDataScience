#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
os.chdir("C:\\Users\\Administrator\\Desktop\\major\\data01s2l1")
os.getcwd()


# In[2]:


import numpy as np
import pandas as pd


# In[10]:
#a. Load CSV in R by skipping second row.

df = pd.read_csv('IMDB_data.csv', encoding = "ISO-8859-1",skiprows = [2]) 


# In[11]:


df


# In[12]:


df['Genre'].unique()


# In[13]:


df['Genre'].unique()
df['Genre'].nunique()


# In[17]:
#b.	Extract the unique genres and its count and store in data frame with index key. 	 

df1 = df['Genre'].value_counts().to_frame()


# In[18]:


df1



# In[25]:
# c. Convert the required data types
#All the variables had object/factor data type

df['Title'].describe()


# In[28]:
df['Plot'] = df['Plot'].astype(str)
# In[29]:
df['Title'] = df['Plot'].astype(str)
# In[49]:
df['Poster'] = df['Poster'].astype(str)
# In[51]:
df['imdbID'] = df['imdbID'].astype(str)
# In[61]:
pd.to_numeric(df['imdbVotes'], errors='coerce')
# In[53]:
pd.to_numeric(df['imdbRating'], errors='coerce')
# In[62]:
pd.to_numeric(df['Year'], errors='coerce')


# In[63]:
#d.	Sort the genre by its name	

df = df.sort_values('Genre', ascending = True)


# In[64]:


df

#e.	Create new variable whose values should be square of difference between imdbrating and imdbvotes.
# In[74]:


df['imdbRating'] = pd.to_numeric(df['imdbRating'], errors='coerce', downcast='float')
df['imdbVotes'] = pd.to_numeric(df['imdbVotes'], errors='coerce', downcast='float')
df['new'] = pow((df['imdbRating'] - df['imdbVotes']), 2)


# In[75]:


df


# In[ ]:




