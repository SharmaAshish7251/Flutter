import sqlite3

def auth_user(email, password):
    try : 
        conn = sqlite3.connect("my_medicalShopV2.db")
        cursor = conn.cursor()

        cursor.execute('SELECT * FROM Users WHERE email=? AND password = ?', (email,password))
        user = cursor.fetchone()
        conn.close()

        return user 


    except Exception as error:
        return error