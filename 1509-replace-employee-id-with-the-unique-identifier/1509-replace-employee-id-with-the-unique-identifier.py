import pandas as pd

def replace_employee_id(employees: pd.DataFrame, employee_uni: pd.DataFrame) -> pd.DataFrame:
    joined= pd.merge(employees,employee_uni,how='left',on='id')[['name','unique_id']]
    joined['unique_id'] = joined['unique_id'].where(pd.notnull(joined['unique_id']), pd.NA).astype('Int64')
    return joined[['unique_id','name']]
    