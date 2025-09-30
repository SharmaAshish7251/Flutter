import sqlite3

def fetch_single_user(user_id):

        # user_id = request.form['user_id']

        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()

        cursor.execute('SELECT * FROM Users WHERE user_id = ?' , (user_id,))
        user = cursor.fetchone()
        conn.close()

        #to json
        single_userJson = []

        tempSingleuser = {
            'id' : user[0],
            'user_id' : user[1],
            'name' : user[2],
            'password' : user[3],
            'email' : user[4],
            'address' : user[5],
            'phone_number' : user[6],
            'pin_code' : user[7],
            'date_of_account_creation' : user[8],
        }

        single_userJson.append(tempSingleuser)
        return single_userJson