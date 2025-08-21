import pandas as pd

def find_classes(courses: pd.DataFrame) -> pd.DataFrame:
    result = courses.groupby('class')['student'].count().reset_index(name='cnt') 
    return result[result['cnt']>=5][['class']]
    