import sqlite3

def single_sell_history(user_id):
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Sell_History where user_id =?  ', (user_id,))

    u_history = cursor.fetchone()
    conn.close()

    if u_history is None:
        return {
            'status': 404,
            'message' : 'No User History',
            'data': []
        }

    # to json format
    user_history = []

    tempUserHistory = {
        'id' : u_history[0],
        'order_id' : u_history[1],
        'user_id' : u_history[2],
        'product_id' : u_history[3],
        'quantity' : u_history[4],
        'order_date' : u_history[5]

    }

    user_history.append(tempUserHistory)
    return user_history