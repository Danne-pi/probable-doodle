import 'package:flutter/material.dart';
import 'package:newproj/pages/home_page.dart';
import 'package:newproj/pages/login_page.dart';
import 'package:newproj/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const HomePage(),
      '/login': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage()
    });
  }
}
