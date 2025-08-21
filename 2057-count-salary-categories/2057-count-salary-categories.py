import pandas as pd

def count_salary_categories(accounts: pd.DataFrame) -> pd.DataFrame:
    conditions = [
    (accounts['income'] < 20000),
    (accounts['income'].between(20000, 50000, inclusive='both')),
    (accounts['income'] > 50000)
    ]
    categories = ['Low Salary', 'Average Salary', 'High Salary']
    accounts['category'] = np.select(conditions, categories, default='Unknown')
    df = accounts.groupby('category')['account_id'].count().reset_index(name='accounts_count')
    Allcategories = pd.DataFrame({'category': categories})
    return pd.merge(Allcategories,df,how='left',on='category').fillna(0)
    