import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: const [
        Expanded(flex: 11, child: SizedBox()),
        Expanded(flex: 3, child: SizedBox()),
      ]),
    );
  }
}
