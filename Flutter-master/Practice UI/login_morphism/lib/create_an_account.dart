import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';
import 'account_created.dart';
import 'login_form.dart';

class CreateAnAccount extends StatefulWidget {
  CreateAnAccount({super.key});

  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  final List<Color> colors = [Colors.red, Colors.orange];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.26,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://tinyurl.com/yck5mfh2'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(320),
            topRight: Radius.circular(320),
          ),
        ),
        child: Column(
          children: [
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
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 42),
            Text(
              'Hello',
              style: GoogleFonts.caprasimo(
                fontSize: 45,
                fontWeight: FontWeight.w100,
                color: AppColor.primaryGreen,
              ),
            ),
            Text(
              'Create an account',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            // Form
            Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 09),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'User name',
                      suffixIcon: Icon(
                        Icons.person,
                        color: AppColor.primaryGreen,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: AppColor.primaryGreen),
                      ),
                    ),
                  ),
                  SizedBox(height: 09),
                  TextField(
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
                    ),
                  ),
                  SizedBox(height: 09),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.password_rounded,
                        color: AppColor.primaryGreen,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: AppColor.primaryGreen),
                      ),
                    ),
                  ),

                  SizedBox(height: 09),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountCreated(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.lightGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Register'.toUpperCase(),
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

                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton.filled(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.facebookF),
                      ),
                      IconButton.filled(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        style: IconButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            255,
                            10,
                            214,
                          ),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 255, 10, 214),
                          ),
                        ),
                      ),

                      IconButton.filled(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.xTwitter),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.black,
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                      Container(
                        width: 40, // slightly bigger for the border effect
                        height: 40,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4285F4),
                              Color(0xFF34A853),
                              Color(0xFFFBBC05),
                              Color(0xFFEA4335),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            width: 40, // inner circle size
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // button background
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      IconButton.filled(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        style: IconButton.styleFrom(
                          backgroundColor: Color(0xFF0270AD),
                          side: BorderSide(color: Color(0xFF0270AD)),
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
