import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Success'), centerTitle: true),
      body: Column(
        children: [
          Text(
            'Login Success',
            style: GoogleFonts.caprasimo(
              fontSize: 38,
              fontWeight: FontWeight.normal,
              color: AppColor.primaryGreen,
            ),
          ),

          Container(
            width: MediaQuery.sizeOf(context).width * 0.6,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: []),
          ),
        ],
      ),
    );
  }
}
