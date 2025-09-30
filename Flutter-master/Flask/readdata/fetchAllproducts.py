import sqlite3

def fetch_all_products():
    conn = sqlite3.connect('my_medicalShopV2.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Products')

    allproducts= cursor.fetchall()
    print(allproducts) # debug
    conn.close()

    # converting products to json
    productsall = []

    # extracting single product from products
    for product in allproducts:
        tempProducts ={
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

        productsall.append(tempProducts)
    return productsall
