import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login page',
            style: GoogleFonts.bebasNeue(
                fontSize: 45, color: Colors.black, letterSpacing: 7),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(70),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            child: const Icon(
              Icons.arrow_back,
              size: 55,
            ),
          )
        ],
      )),
    );
  }
}
