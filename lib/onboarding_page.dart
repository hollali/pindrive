import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/onboarding.png'),
                fit: BoxFit.cover
                )
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('Premium cars at affordable prices. \nEnjoy the luxury of driving without the hassle of ownership.'),
              ],
            ),
          )
        ],
      )
    );
  }
}
