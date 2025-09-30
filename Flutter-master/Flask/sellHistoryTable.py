import sqlite3

def sell_history():
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('''

    CREATE TABLE IF NOT EXISTS Sell_History(
                   id INTEGER PRIMARY KEY AUTOINCREMENT,
                   order_id VARCHAR(255),
                   user_id VARCHAR(255),
                   product_id VARCHAR(255),
                   quantity INTEGER,
                   order_date DATE


                   )
 
''')
    

    conn.commit() # db commit changes
    conn.close()  # db connection close

sell_history()