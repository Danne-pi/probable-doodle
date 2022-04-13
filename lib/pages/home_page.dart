import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproj/widgets/basic_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello world!',
            style: GoogleFonts.bebasNeue(
                fontSize: 45, color: Colors.black, letterSpacing: 7),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BasicBtn(
                text: 'entrar',
                ontap: () {
                  Navigator.of(context).pushNamed('/login');
                },
              ),
              const SizedBox(
                width: 16,
              ),
              BasicBtn(
                text: 'Registrar',
                ontap: () {
                  Navigator.of(context).pushNamed('/register');
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
