import sqlite3

def fetch_single_product(order_id):
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Orders WHERE order_id =?', (order_id,))
    order = cursor.fetchone()

    #to json
    single_order = []

    temp_Single_order = {
           'id' : order[0],
            'order_id' : order[1],
            'user_id' : order[2],
            'product_id' : order[3],
            'quantity' : order[4],
            'order_date' : order[5],
            'order_status' : order[6],
            'order_price' : order[7]
    }


    single_order.append(temp_Single_order)
    return single_order