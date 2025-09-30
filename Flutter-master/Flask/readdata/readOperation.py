import sqlite3

def get_all_user_read():
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Users')

    users = cursor.fetchall()
    print(users)
    conn.close()

    #converting user details into json format
    usersJson = []
    

    # extracting user from users table
    for user in users:
        tempUser = {
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

        usersJson.append(tempUser)

    return usersJson

