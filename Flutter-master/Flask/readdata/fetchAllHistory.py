import sqlite3

def fetch_sell_history():
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * from Sell_History')

    sell_history = cursor.fetchall()
    conn.close()

    # to json format

    arr_sell_history = []
    for history in sell_history:
        tempHistory = {
            'id' : history[0],
            'order_id' : history[1],
            'user_id' : history[2],
            'product_id' : history[3],
            'quantity' : history[4],
            'order_date' : history[5]
        }


        arr_sell_history.append(tempHistory)
        return arr_sell_history