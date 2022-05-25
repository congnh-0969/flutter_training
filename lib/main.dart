import 'package:flutter/material.dart';
import 'package:my_app/ui/sign_up.dart';
import 'package:my_app/ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        loginPageRoutes: (context) => const LoginPage(),
        signUpPageRoutes: (context) => const SignUpPage(),
      },
    );
  }
}
