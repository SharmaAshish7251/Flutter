import sqlite3

def order_table():
    try:
        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()
        cursor.execute('''
            CREATE TABLE IF NOT EXISTS Orders (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                order_id VARCHAR(255),
                user_id VARCHAR(255),
                product_id VARCHAR(255),
                quantity INTEGER,
                order_date DATE,
                order_status VARCHAR(255),
                order_price FLOAT
            )
        ''')
        conn.commit()
        print("Table created or already exists.")
    except Exception as e:
        print(f"Error creating table: {e}")
    finally:
        conn.close()

order_table()
