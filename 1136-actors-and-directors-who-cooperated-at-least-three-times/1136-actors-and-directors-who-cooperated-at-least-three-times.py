import pandas as pd

def actors_and_directors(actor_director: pd.DataFrame) -> pd.DataFrame:
    grouping = actor_director.groupby(['director_id','actor_id'])['actor_id'].size().reset_index(name='cnt')
   # maxcnt = grouping['cnt'].max()
    return grouping[grouping['cnt']>=3][['actor_id','director_id']]
    