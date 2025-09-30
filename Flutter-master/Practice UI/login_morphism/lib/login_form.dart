import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';
import 'login_success.dart';
import 'create_an_account.dart';

class LoginForm extends StatefulWidget {
  // String? emailError, passwordError;
  // LoginForm({required this.emailError, required this.passwordError});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? passwordError, emailError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://tinyurl.com/yck5mfh2'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(320),
                  bottomRight: Radius.circular(320),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.9,

                    child: Column(
                      children: [
                        Text(
                          'Art Of Plants',
                          style: GoogleFonts.caprasimo(
                            fontSize: 45,
                            fontWeight: FontWeight.w100,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Divider(color: Colors.white, thickness: 2),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Plants gave us oxygen for',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'lungs and for the soul',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.black12,
                      offset: Offset(3, 9),
                      spreadRadius: 03,
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                  icon: Icon(Icons.close, color: Colors.green, size: 38),
                ),
              ),
            ),

            // Form
            Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: GoogleFonts.caprasimo(
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      color: AppColor.primaryGreen,
                    ),
                  ),

                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email ID',
                      suffixIcon: Icon(
                        Icons.email,
                        color: AppColor.primaryGreen,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: AppColor.primaryGreen),
                      ),
                      errorText: emailError,
                    ),
                  ),
                  SizedBox(height: 09),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.password,
                        color: AppColor.primaryGreen,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: AppColor.primaryGreen),
                      ),
                      errorText: passwordError,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot your password',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 09),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        // setState(() {
                        //   if (emailController.text.isEmpty) {
                        //     emailError = 'Please enter username or email';
                        //   } else {
                        //     emailError = null;
                        //   }
                        //   if (passwordController.text.isEmpty) {
                        //     passwordError = 'Please enter password';
                        //   } else {
                        //     passwordError = null;
                        //   }
                        // });
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => LoginSuccess(),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 09),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: ' Register Now',
                              style: TextStyle(
                                color: AppColor.primaryGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                decorationColor: AppColor.primaryGreen,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CreateAnAccount(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // End Form
          ],
        ),
      ),
    );
  }
}
