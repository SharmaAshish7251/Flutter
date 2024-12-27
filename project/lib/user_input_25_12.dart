
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Input',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: const MyHomePage(title: 'User Input'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var emailText= TextEditingController();
    var passText= TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),



        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 450,
                child: TextField(
                  controller: emailText, // to get user input
                 // enabled: false, // to disable any field
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixText: 'email',
                    prefixIcon: Icon(Icons.mail),
                    // suffixIcon: Icon(Icons.email_outlined),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye), color:Colors.blue,
                  onPressed: (){
                        
                  },

                  ),
                    hintText: 'Enter your email',
                    suffixIconColor: Colors.blue,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blueAccent,
                      ),

                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6)
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    )

                  ),
                ),
              ),

              Container(
                height: 11,
              ),


              Container(
                  width: 450,
                  child: TextField(
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                   hintText: 'Enter your Password',
                     prefixIcon: Icon(Icons.key_outlined),
                      suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blue,),


                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                          width: 1,
                        ),
                      ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(6)
                        )
                    ),
                  )
              ),
              
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text.toString();
                String uPass = passText.text.toString();
                
                print('User email : $emailText, user password : $passText');
              }, child: Text('Login')),
            ],
            
          ),
          
        ),

    );
  }
}
