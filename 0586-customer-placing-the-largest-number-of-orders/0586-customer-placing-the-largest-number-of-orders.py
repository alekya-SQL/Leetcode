import pandas as pd

def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
    result = orders.groupby('customer_number')['order_number'].count().reset_index(name='cnt').sort_values(by='cnt',ascending=False)
    maxcnt = result['cnt'].max()
    return result[result['cnt'] == maxcnt][['customer_number']]    
    