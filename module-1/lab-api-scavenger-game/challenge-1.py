# enter your code below challenge 1
import json
import requests

response = requests.get('https://api.github.com/repos/ironhack-datalabs/datamia0619/forks')
results = response.json()
results

lang_list = []

for item in results:
    fork_details = {"full_name":None, "language":None}
    fork_details['full_name'] = item['full_name']
    fork_details['language'] = item['language']
    lang_list.append(fork_details)

print(lang_list)

#challenge 2
r = requests.get('https://api.github.com/repos/ironhack-datalabs/datamia0619/stats/commit_activity')
raw = r.text
results2 = json.loads(raw)
results22=pd.DataFrame(results2)
print(results22)
results22['total'] = pd.to_numeric(results22['total'], errors='coerce')
print(sum(results22['total']))
#number of commits

#challenge 3
#Challenge 3
import json
import requests
import getpass

username = 'gissellec16'
token = getpass.getpass(prompt='Token: ', stream=None)

# Create a re-usable session object with the user creds in-built
gh_session = requests.Session()
gh_session.auth = (username, token)
base_url = 'https://api.github.com/repos/ironhack-datalabs/scavenger'
url = base_url+'/git/trees/9308ccc8a4c34c5e3a991ee815222a9691c32476?recursive=1'
results3 = json.loads(gh_session.get(url).text)
results3

import pandas as pd
type(results3)
lst = results3['tree']
files = []

for item in lst:    
    if item['path'].endswith('hunt'):        
        files.append(item['path'])
import re
lst = []
pattern = '00\d*'
for item in files:    
    lst.append(re.findall(pattern,item))
lst
x = pd.DataFrame(files, columns=['filename'])
y = pd.DataFrame(lst,columns=['num'])
FILES = pd.concat([x,y],axis = 1)
FILES