import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    employee.drop_duplicates('salary',inplace=True)
    result = employee.sort_values(by='salary',ascending=False).nlargest(2,'salary')
    rows,columns =result.shape
    if rows>=2:
     return pd.DataFrame({'SecondHighestSalary':result['salary'].tail(1)})
    else:
        return pd.DataFrame({'SecondHighestSalary': [np.nan]}) 

    