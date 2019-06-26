import pandas as pd
elections = pd.read_csv('1976-2016-president.csv', error_bad_lines=False, low_memory=False)
sorted_elections = elections.sort_values('candidatevotes', ascending=False).groupby(['year', 'state',])['candidate'].first().unstack().transpose()
sorted_elections.columns = sorted_elections.columns.map(str)
print(sorted_elections.apply(lambda col: col.mode()).transpose())