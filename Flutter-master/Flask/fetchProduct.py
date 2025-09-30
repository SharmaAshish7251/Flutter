import sqlite3

def product_medical_fetch(product_id):

    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Products WHERE product_id =?', (product_id,))
    product = cursor.fetchone()

    # to json format
    single_product = []
    tempProduct ={
      
        'id' : product[0],
        'product_id' : product[1],
        'product_name' : product[2],
        'product_category' : product[3],
        'product_price' : product[4],
        'product_Quantity' : product[5],
        'product_image' : product[6],
        'product_description' : product[7],
        'date_of_product_add' : product[8]
    }

    single_product.append(tempProduct)
    return single_product
