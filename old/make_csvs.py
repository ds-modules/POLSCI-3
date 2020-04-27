import pandas as pd
import os
for r, d, f in os.walk('jason_data/data'):
    for file_name in f:
        if file_name[-3:] == 'dta':
            try:
                pd.read_stata('jason_data/data/'+file_name,encoding='utf-8').to_csv('jason_data/data/'+file_name[:-3]+'csv', index=False)
            except:
                print(file_name)