import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
     return views[views.author_id == views.viewer_id
             ].sort_values('author_id'
             ).rename(columns = {'author_id': 'id'}
             ).drop_duplicates('id').iloc[:,[1]]
    