import 'package:flutter/material.dart';
import 'package:medical/menu/drawer_menu.dart';
import 'create_an_account.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garuda Pharmacy'),
        centerTitle: true,

        backgroundColor: Colors.blue.shade50,
      ),

      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // 1st Container
              Container(
                height: MediaQuery.sizeOf(context).height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://tinyurl.com/yppyj2rb'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),

              // End 1st Container

              //2nd Container
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Column(
                  children: [
                    // Heading
                    Column(
                      children: [
                        SizedBox(height: 09),
                        Text(
                          'Login to Account',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back,please login to continue',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    // End Heading

                    // Input Fields
                    Container(
                      margin: EdgeInsets.only(top: 20),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Username / Email
                          TextField(
                            decoration: InputDecoration(
                              label: Text('Username / Phone Number'),
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.blueGrey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),

                          SizedBox(height: 6),
                          // Password
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              label: Text('Password'),
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.blueGrey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment.centerLeft,

                            child: CheckboxListTile(
                              value: true,
                              onChanged: (_) {},

                              title: Text('Remember Me'),
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // End Input Fields

                    // Login Button
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          // Login Button
                          Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              icon: Icon(Icons.login),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                iconColor: Colors.white,
                              ),
                            ),
                          ),

                          // End Login Button
                        ],
                      ),
                    ),

                    // End Login Button
                    SizedBox(height: 9),

                    // Signup Button
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      margin: EdgeInsets.only(bottom: 09),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateAnAccount(),
                                  ),
                                );
                              },
                              label: Text(
                                'Create An Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              icon: Icon(Icons.key),

                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                iconColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // End Sign Button
                  ],
                ),
              ),

              // End 2nd Container
            ],
          ),
        ),
      ),
    );
  }
}
