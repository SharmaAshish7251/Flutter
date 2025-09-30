import sqlite3

def product_table():

    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()

    cursor.execute('''
    CREATE TABLE IF NOT EXISTS Products(
                   id INTEGER PRIMARY KEY AUTOINCREMENT,
                   product_id VARCHAR(255),
                   product_name VARCHAR(255),
                   product_category VARCHAR(255),
                   product_price FLOAT,
                   product_Quantity INTEGER,
                   product_image VARCHAR(255),
                   product_description VARCHAR(255),
                   date_of_product_add DATE

                   
                   )

''')
    
    conn.commit() #save changes
    conn.close()  #db connection close

product_table()