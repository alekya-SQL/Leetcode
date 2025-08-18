import pandas as pd

def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
    result = employee.drop_duplicates('salary')
    result['rno'] = result['salary'].rank(ascending=False).astype(int)
    final = result[result['rno']==N][['salary']]
    if not final.empty: return pd.DataFrame({f'getNthHighestSalary({N})':final.iloc[0]})
    else: return  pd.DataFrame({f'getNthHighestSalary({N})': [None]})
   


