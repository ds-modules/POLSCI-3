import pandas as pd
import numpy as np
# elections = pd.read_csv('1976-2016-president.csv',
#                         error_bad_lines=False, low_memory=False)
# sorted_elections = elections.sort_values('candidatevotes', ascending=False).groupby(
#     ['year', 'state', ])['candidate'].first().unstack().transpose()
# sorted_elections.columns = sorted_elections.columns.map(str)
# data = sorted_elections.apply(lambda col: col.mode()).transpose()

# df = pd.DataFrame(data=[np.array(data.index), np.array(data.values).flatten()]).T
# df.columns = ['year', 'president']
# print(df)
# df.to_csv('election_outcomes.csv')

fair_df = pd.read_stata('beta materials/data/fair.dta')
print(fair_df)
govts_df = pd.read_stata('beta materials/data/govts.dta')
print(govts_df)
fair_df.to_csv('beta materials/data/fair.csv', index=False)
govts_df.to_csv('beta materials/data/govts.csv',index=False)