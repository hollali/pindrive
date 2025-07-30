import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
          child:Container(
            child: Column(
              children: [
                Text(
                  'Premium cars at affordable prices. \nEnjoy the luxury of driving without the hassle of ownership.',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}
