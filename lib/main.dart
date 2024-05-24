import 'package:flutter/material.dart';
import 'package:libraryplus/pages/landing.dart';
import 'package:libraryplus/pages/login_page.dart';
import 'package:libraryplus/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Splash(),
        '/landing': (context) => const Landing(),
        '/login_page': (context) => const LoginPage(),
      },
    );
  }
}
