import sqlite3
import uuid
from datetime import date

def addProduct_db(product_name, product_category, product_price, product_Quantity, product_image, product_description):
    try : 

        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()
        product_id = str(uuid.uuid4())
        date_of_product_add = date.today()

        cursor.execute('''

INSERT INTO Products(product_id,product_name, product_category, product_price, product_Quantity, product_image, product_description, date_of_product_add)
                       VALUES(?,?,?,?,?,?,?,?)


''', (product_id,product_name, product_category, product_price, product_Quantity, product_image, product_description, date_of_product_add)


                        )
        
     
        conn.commit() # db changes push
        conn.close() # connection close

        return product_id



    except Exception as error:
        return str(error)
    
    