import pandas as pd

def sales_person(sales_person: pd.DataFrame, company: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    df = pd.merge(sales_person,orders,on='sales_id',how='left')[['order_id','sales_id','name','com_id']]
    df2 = pd.merge(company,orders,on='com_id',how='inner')[['name','sales_id']]
    filtered  = df2[df2['name']=='RED'][['sales_id']]
    df3 = df[~df['sales_id'].isin(filtered['sales_id'])].drop_duplicates('name')[['name']]
    return df3
    