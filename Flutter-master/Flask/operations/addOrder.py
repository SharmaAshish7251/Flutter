import sqlite3
import uuid
from datetime import date


def orderadd(user_id,product_id,quantity, order_status,order_price):
    try :
        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()
        order_date = date.today()
        order_id = str(uuid.uuid4())
        cursor.execute(''' 
INSERT INTO Orders(user_id, order_id, product_id, quantity, order_status, order_price, order_date)
                       VALUES (?,?,?,?,?,?,?)

''', (user_id, order_id, product_id,quantity, order_status, order_price, order_date)
)
        
        conn.commit()
        conn.close()
        return order_id
    except Exception as error:
        return str(error)