import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 220,
            width: 210,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Vector.png'),
                // fit: BoxFit.cover,
              ),
            ),
            child: Center(child: Image.asset('assets/images/Group 1.png')),
          ),
        ],
      ),
    );
  }
}
