import 'package:flutter/material.dart';
import 'package:pharmacy_user/repositories/auth_repositories.dart';
// API response testing

class SignupScreenDebug extends StatefulWidget {
  const SignupScreenDebug({super.key});

  @override
  State<SignupScreenDebug> createState() => _SignupScreenState();
}

final _nameCtrl = TextEditingController();
final _passCtrl = TextEditingController();
final _emailCtrl = TextEditingController();
final _phoneCtrl = TextEditingController();
final _addressCtrl = TextEditingController();
final _pinCtrl = TextEditingController();

Widget _buildTextField(
  TextEditingController ctrl,
  String label,
  TextInputType keyboardType,
) {
  return TextField(
    controller: ctrl,
    decoration: InputDecoration(labelText: label),
    keyboardType: keyboardType,
  );
}

// var repo = AuthRepository(); // repo instilization

class _SignupScreenState extends State<SignupScreenDebug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup API Testing'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.99,
          height: MediaQuery.sizeOf(context).height * 0.99,
          child: Column(
            children: [
              _buildTextField(_nameCtrl, 'Name', TextInputType.text),
              _buildTextField(
                _passCtrl,
                'Password',
                TextInputType.visiblePassword,
              ),
              _buildTextField(_emailCtrl, 'Email', TextInputType.emailAddress),
              _buildTextField(_phoneCtrl, 'Phone Number', TextInputType.number),
              _buildTextField(_addressCtrl, 'Address', TextInputType.text),
              _buildTextField(_pinCtrl, 'Pin Code', TextInputType.number),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  repo.signup(
                    _nameCtrl.text,
                    _passCtrl.text,
                    _emailCtrl.text,
                    _phoneCtrl.text,
                    _addressCtrl.text,
                    _pinCtrl.text,
                  );
                },
                child: Text('Create An Account'),
              ),

              Divider(),
              Text('Already have an Account'),
            ],
          ),
        ),
      ),
    );
  }
}
