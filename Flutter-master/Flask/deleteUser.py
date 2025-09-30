import sqlite3

def user_delete_db(user_id):

    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()

    cursor.execute('DELETE FROM Users WHERE user_id = ?', (user_id,))
    conn.commit() #commit changes
    rows_affected = cursor.rowcount
    conn.close() #close connection
    return rows_affected

