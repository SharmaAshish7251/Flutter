import sqlite3
import uuid
from datetime import date


def user_purchase_history(order_id,user_id, product_id, quantity):
    try : 
        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()
        order_date = date.today()
        cursor.execute('''

    INSERT INTO Sell_History(user_id, product_id, quantity, order_id, order_date)
                    VALUES(?,?,?,?,?) 
    ''', (order_id,user_id, product_id, quantity ,order_date))
        

        conn.commit() # save changes to db
        conn.close() # db connection close
        return user_id

    except Exception as error:
        return str(error)
