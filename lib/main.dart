import 'package:flutter/material.dart';
import 'package:protoshop/presentation/pages/login_page.dart';
import 'package:protoshop/presentation/pages/main_page.dart';
import 'package:protoshop/presentation/pages/register_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/main",
      routes: {
        "/main": (context) => const MainPage(),
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage()
      },
    );
  }
}
