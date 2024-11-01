import 'package:flutter/material.dart';
import 'package:libraryplus/pages/home_page.dart';
import 'package:libraryplus/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  bool _isErrorVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 130, bottom: 80),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(text: 'Library', style: title1.copyWith(fontSize: 32)),
                TextSpan(text: 'Plus', style: title2.copyWith(fontSize: 32)),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: TextField(
                controller: _nimController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: textColor1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'NIM',
                    hintStyle: TextStyle(
                      color: textColor1,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: textColor1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: textColor1,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    )),
              ),
            ),
            if (!_isErrorVisible)
              const SizedBox(
                height: 48,
              ),
            if (_isErrorVisible)
              const SizedBox(
                height: 25,
              ),
            if (_isErrorVisible)
              const Text(
                'NIM atau password Anda salah, coba lagi!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
            ElevatedButton(

              onPressed: () {
                if (_nimController.text == '23610252' && _passwordController.text == '2810') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                      _isErrorVisible = false;
                } else {
                  setState(() {
                    _isErrorVisible = true;
                  });
                }
              },
              
              style: ElevatedButton.styleFrom(
                  backgroundColor: textColor1,
                  minimumSize: Size(296, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)
                  )
              ),

              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: backgroundColor1,
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
