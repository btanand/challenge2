import json
import sys
# Code to retrieve specific key
f = open('instancemetadata.json',)
# Code to load the Json file into a dictionary
data = json.load(f)
key_list = []
print ("Enter comma separated values of data keys to be retrieved: ")
key_list = input().split(',')

# Flattens the nested object into key value pairs
def get_vals(data, key_list):
        for i,j in data.items():
         if i in key_list:
            yield (i, j)
            print(i)
         # Recursive call to the method to
         yield from [] if not isinstance(j, dict) else get_vals(j, key_list)
res = dict(get_vals(data, key_list))
print(res)
