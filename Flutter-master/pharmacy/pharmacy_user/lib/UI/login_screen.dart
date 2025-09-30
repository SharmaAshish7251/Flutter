import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmacy_user/UI/signup_screen.dart';
import 'package:pharmacy_user/core/provider.dart';
import 'package:pharmacy_user/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pharmacy_user/UI/home_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  Widget _LoginField(
    TextEditingController ctl,
    String label,
    TextInputType textInputType,
  ) {
    return Padding(
      padding: EdgeInsets.all(18),

      child: TextField(
        controller: ctl,
        decoration: InputDecoration(labelText: label),
        keyboardType: textInputType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authViewModelsProvider);

    ref.listen<AsyncValue<LoginModel>>(authViewModelsProvider, (prev, next) {
      next.whenData((LoginModel) async {
        if (LoginModel.status == 200) {
          // to store values
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('userId', LoginModel.message);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(LoginModel.message)));
          print('Login successful');

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(LoginModel.message)));
          print('Chal be');

        }
      });
    });

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: authState.isLoading ? const Center(child: CircularProgressIndicator(),) : Padding(
        padding: const EdgeInsets.all(03),
        child: Container(
          child: Column(
            children: [
              _LoginField(
                _emailCtrl,
                'Email Address',
                TextInputType.emailAddress,
              ),
              _LoginField(_passwordCtrl, 'Password', TextInputType.visiblePassword),
              ElevatedButton(
                onPressed: () {
                  print("Login button pressed");

                  final email = _emailCtrl.text;
                  final password = _passwordCtrl.text;
                  print("Email: $email, Password: $password");

                  ref
                      .read(authViewModelsProvider.notifier)
                      .login(_emailCtrl.text, _passwordCtrl.text);
                },

                child: Text('Login'),
              ),

              Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Don't have an account"),
                  TextButton(
                    onPressed:
                        () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    ),
                    child: Text('Create Now'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
