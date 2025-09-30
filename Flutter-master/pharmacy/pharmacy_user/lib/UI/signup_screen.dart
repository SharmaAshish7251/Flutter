import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmacy_user/UI/login_screen.dart';
import 'package:pharmacy_user/core/provider.dart';
import 'package:pharmacy_user/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

// river pod setup
class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final _formKey = GlobalKey<FormState>(); //  Form key

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
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        controller: ctrl,
        keyboardType: keyboardType,
        decoration: InputDecoration(labelText: label),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return '$label is required';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelsProvider);

    // ref.listen<AsyncValue<LoginModel>>(authViewModelsProvider, (prev, next) {
    //   next.whenData((LoginModel) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text(LoginModel.message)),
    //     );
    //   });
    // });

    ref.listen<AsyncValue<LoginModel>>(authViewModelsProvider, (prev, next) {
      next.when(
        data: (loginModel) async {
          if (loginModel.status == 200) {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('userId', loginModel.message);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(loginModel.message)),
            );

            print('Account Created successfully');

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(loginModel.message)),
            );
          }
        },
        loading: () {
          print('Loading...');
        },
        error: (e, st) {
          print('Error: $e');
        },
      );
    });


    return Scaffold(
      appBar: AppBar(title: const Text('Signup')),
      body: SingleChildScrollView(
        child: Form(
          // ✅ Wrap entire form in `Form`
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(03),
            child: Column(
              children: [
                _buildTextField(_nameCtrl, 'Name', TextInputType.text),
                _buildTextField(
                  _emailCtrl,
                  'Email',
                  TextInputType.emailAddress,
                ),
                _buildTextField(
                  _passCtrl,
                  'Password',
                  TextInputType.visiblePassword,
                ),
                _buildTextField(_addressCtrl, 'Address', TextInputType.text),
                _buildTextField(
                  _phoneCtrl,
                  'Phone Number',
                  TextInputType.number,
                ),
                _buildTextField(_pinCtrl, 'Pin Code', TextInputType.number),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ✅ Only run if all fields are valid
                      ref
                          .read(authViewModelsProvider.notifier)
                          .signup(
                            _nameCtrl.text,
                            _emailCtrl.text,
                            _passCtrl.text,
                            _addressCtrl.text,
                            _phoneCtrl.text,
                            _pinCtrl.text,
                          );
                    }
                  },
                  child: const Text('Create An Account'),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an Account'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text('Login Now'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
