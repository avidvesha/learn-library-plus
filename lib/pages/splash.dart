import 'dart:async';

import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    Timer(
        Duration(seconds: 3), (() => Navigator.pushNamed(context, '/landing')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(text: 'Library', style: title1),
          TextSpan(text: 'Plus', style: title2),
        ])),
      ),
    );
  }
}
