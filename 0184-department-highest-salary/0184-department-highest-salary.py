import pandas as pd

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    employee['rank']= employee.groupby('departmentId')['salary'].rank(method='dense').astype(int)
    highest_salary = employee.groupby('departmentId')['rank'].max().reset_index()
    filtereddata = pd.merge( highest_salary,employee,how='inner',right_on = ['departmentId','rank'],left_on = ['departmentId','rank'],suffixes=('_r','_l'))[['name','salary','departmentId']]
    result = pd.merge(filtereddata,department,how='inner',left_on='departmentId',right_on='id')[['name_x','name_y','salary']]
    result.rename(columns={'name_x':'Employee','name_y':'Department','salary':'Salary'},inplace=True)
    return result[['Department','Employee','Salary']]

    