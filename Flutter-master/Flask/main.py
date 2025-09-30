from flask import Flask, request, jsonify 
from createTable import create_table 
import sqlite3
from add_history import user_purchase_history
from operations.addOperation import createUser
from operations.addProduct import addProduct_db
from authUser import auth_user
from readdata.readOperation import get_all_user_read
from singleUser import fetch_single_user
# from deleteUser import user_delete_db
from productTable import product_table
from readdata.fetchAllproducts import fetch_all_products
from fetchProduct import product_medical_fetch
from operations.addOrder import orderadd
from readdata.fetchAllOrders import fetch_all_orders
from readdata.fetchAllHistory import fetch_sell_history
from fetch_history import single_sell_history

app = Flask(__name__)  #Create a Flask application


#route
@app.route('/', methods=['GET'])
def home_route():
    return 'Hello Dev'




@app.route('/createUser', methods=['POST'])
def create_user():
    try : 
        name = request.form['name']
        password = request.form['password']
        email = request.form['email']
        address = request.form['address']
        phone_number = request.form['phone_number']
                
        pin_code = request.form['pin_code']

        user_uuid = createUser(name=name, password=password, email=email, phone_number=phone_number,address=address, pin_code=pin_code)

        return jsonify({'message' :  user_uuid, 'status' : 200})


    except Exception as error:
        return jsonify({'message': str(error), 'status': 400})
    


# Add Product
@app.route('/addproduct', methods=['POST'])    
def product_Add():
    try : 
        product_name = request.form['product_name']
        product_category = request.form['product_category']
        product_price = request.form['product_price']
        product_Quantity = request.form['product_Quantity']
        product_image = request.form['product_image']
        product_description = request.form['product_description']

        product_uuid = addProduct_db(product_name=product_name, product_category=product_category, product_price=product_price, product_Quantity=product_Quantity,product_image=product_image, product_description=product_description)

        return jsonify({'message' : product_uuid, 'status' : 200})    


    except Exception as error:
        return str(error)
    


@app.route('/login', methods=['POST'])
def login():
    try : 
        email = request.form['email']
        password = request.form['password']

        user = auth_user(email=email, password=password)
        if user:
            return jsonify({'status': 200, 'message' : user[1]})
        else:
            return jsonify({'status': 401, 'message': 'Invalid Credentials'})

    

    except Exception as error: 
        return jsonify({'status': 400, 'message': str(error)})



@app.route('/getAllUsers', methods=['GET'])
def get_all_user():
    try : 


        users = get_all_user_read()


        if users:
            return jsonify({'status': 200, 'message' : users})
        else: 
            return jsonify({'status' : 404, 'message' : 'No Users Found'})
        



    except Exception as error:
        return jsonify({'status': 400, 'message': str(error)})    
    

@app.route('/all-products', methods=['GET'])
def get_all_products():
    try :
        allproducts = fetch_all_products()

        if allproducts :
            return jsonify({'status': 200, 'message': allproducts})
        else : 
            return jsonify({'status': 404, 'message' : 'No Products Found'})

    except Exception as error:
        return jsonify({'status': 400, 'message' : str(error)})


@app.route('/all-orders', methods=['GET'])
def get_all_orders():
    try : 
        all_order = fetch_all_orders()

        if all_order:
            return jsonify({'status': 200, 'message' : all_order})
        else :
            return jsonify({'status': 404, 'message' : 'No Order Found'})
        
    except Exception as error:
        return str(error)


@app.route('/all-history', methods=['GET'])
def all_history():
    try : 
        admin_sell_history = fetch_sell_history()

        if admin_sell_history:
            return jsonify({'status': 200 , 'message' : admin_sell_history})
        else: 
            return jsonify({'status' : 404 , 'message' : 'No History Found'})
        
    except Exception as error:
        return str(error)    



@app.route('/getSingleUser', methods=['POST'])
def get_single_user():
    try :
      
        user_id = request.form['user_id'] # pass user id to user , request.form is flask function
        single_user  = fetch_single_user(user_id)

        if single_user: 
            return jsonify({'status' : 200, 'message': single_user})
        else : 
            return jsonify({'status' : 404, 'message' : 'No User found'})
       


    except Exception as error:
        return jsonify({'status' : 403, 'message' : str(error)})
    

@app.route('/single-product', methods=['POST'])
def fetch_product():
    try :
        product_id = request.form['product_id']
        one_product = product_medical_fetch(product_id)

        if one_product :
            return jsonify({'status' : 200, 'message' : one_product})
        else: 
            return jsonify({'status' : 404, 'message' : 'No Product Found'})
        
    except Exception as error:
        return jsonify({'status': 403, 'message' : str(error)})   



@app.route('/user_sell_history', methods=['POST'])
def u_sell_history():
    try :
        user_id = request.form['user_id']
        sell_history_by_id = single_sell_history(user_id)

        if sell_history_by_id :
            return jsonify({'status': 200, 'message' : sell_history_by_id})
        else :
            return jsonify({'status': 404, 'message' : 'Invalid User id'})
        
    except Exception as error:
        return jsonify({'status' : 403, 'message' : str(error)})





@app.route('/deleteUser', methods=['DELETE'])
def delete_user():
    try :

       
        user_id = request.form['user_id']


        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()

        cursor.execute('DELETE FROM Users WHERE user_id = ?',  (user_id,))

        conn.commit()
        conn.close()

        return jsonify({'status': 200, 'message' : 'User Deleted Sucessfully'})

    except Exception as error:
        return jsonify({'status' : 403, 'message' : str(error)})

@app.route('/delete-product', methods=['DELETE'])
def del_product():
    try : 

        product_id = request.form['product_id']

        conn = sqlite3.connect('my_medicalShopV2.db')
        cursor = conn.cursor()

        cursor.execute('DELETE FROM Products WHERE product_id =? ', (product_id,))
        conn.commit()
        conn.close()

        return jsonify({'status' : 200, 'message' : 'Product Deleted Sucessfully'})
    
    except Exception as error:
        return jsonify({'status' : 403, 'message' : str(error)})




@app.route('/order-product', methods=['POST'])
def product_order():
    try :
        user_id = request.form['user_id']
        product_id = request.form['product_id']
        quantity = request.form['quantity']
        order_status = request.form['order_status']
        order_price = request.form['order_price']

        placedOrder=orderadd(user_id= user_id, product_id=product_id, quantity=quantity, order_status=order_status, order_price=order_price)
        
        if placedOrder:
           return jsonify({'status' : 200 , 'message' : 'Order Placed Sucessfully'})
        else :
            return jsonify({'status' : 403, 'message' : 'Please fill all details'})



    except Exception as error:
        return str(error)
    

@app.route('/add-history', methods=['POST'])
def add_history():
    try :
        order_id = request.form['order_id']
        user_id = request.form['user_id']
        product_id = request.form['product_id']
        quantity = request.form['quantity']
        


        user_history = user_purchase_history(order_id= order_id, user_id= user_id, product_id=product_id, quantity=quantity)

        return jsonify({'status':200, 'message': str(user_history)})


    except Exception as error:
        return str(error)





if __name__=='__main__':
   
    create_table()   # to run table query, all queries execute after main
    product_table()
 
    app.run(debug=True) 