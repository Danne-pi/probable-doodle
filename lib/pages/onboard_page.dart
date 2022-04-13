import 'package:flutter/material.dart';
import 'package:newproj/data/onboard_data.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 11,
              child: PageView.builder(
                itemCount: onboardingContents.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                controller: _pageController,
                itemBuilder: (context, index) =>
                    Text(onboardingContents[index].title),
              )),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: GestureDetector(
                    child: const Text('click aqui'),
                    onTap: () {
                      currentPage == 4
                          ? Navigator.of(context).pushReplacementNamed('/home')
                          : _pageController.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.fastOutSlowIn);
                    }),
              )),
        ],
      )),
    );
  }
}
