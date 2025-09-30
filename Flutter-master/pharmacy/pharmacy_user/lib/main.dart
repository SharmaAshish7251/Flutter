import 'package:flutter/material.dart';
import 'package:pharmacy_user/UI/login_screen.dart';
import 'package:pharmacy_user/UI/product_screen.dart';
import 'package:pharmacy_user/UI/profile_screen.dart';
import 'package:pharmacy_user/UI/signup_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmacy_user/core/provider.dart';

import 'UI/order_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharmacy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AuthGate(),

      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/profile': (context) => ProfileScreen(),
        '/order': (context) => OrderScreen(),
        '/product': (context) => ProductScreen(),
      },
    );
  }
}

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefs = ref.watch(sharedPrefProvider);
    return prefs.when(
      data: (prefs) {
        final userId = prefs.getString('userId');
        debugPrint(userId);
        if (userId != null && userId.isEmpty) {
          return LoginScreen();
        } else {
          return SignupScreen();
        }
      },

      error:
          (err, stack) => Scaffold(body: Center(child: Text(err.toString()))),

      loading: () => Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
