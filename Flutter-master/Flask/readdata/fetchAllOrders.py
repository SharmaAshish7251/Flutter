import sqlite3

def fetch_all_orders():
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Orders')

    allOrders = cursor.fetchall()
    print(allOrders)
    conn.close()

    # order to json format
    order_all = []

    for order in allOrders:
        tempOrder = {
            'id' : order[0],
            'order_id' : order[1],
            'user_id' : order[2],
            'product_id' : order[3],
            'quantity' : order[4],
            'order_date' : order[5],
            'order_status' : order[6],
            'order_price' : order[7]


        }

        order_all.append(tempOrder)
    return order_all
