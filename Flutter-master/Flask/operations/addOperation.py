import sqlite3
import uuid
from datetime import date

def createUser(name, password, address, email, phone_number, pin_code):
    try:

        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()
        user_uuid = str(uuid.uuid4())
        date_Of_Account_creation = date.today()
        cursor.execute('''


    INSERT INTO Users(name, password, address, email, phone_number, pin_code, date_of_account_creation, user_id)
            VALUES(?,?,?,?,?,?,?,?)


''', (
    name, password, address, email, phone_number, pin_code, date_Of_Account_creation, user_uuid)
                       
                       )
        
        conn.commit()
        conn.close()

        return user_uuid



    except Exception as error:
        return    str(error)