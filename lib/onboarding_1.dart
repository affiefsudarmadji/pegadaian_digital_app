import 'package:flutter/material.dart';
import 'package:pegadaian_digital/introduction.dart';
import 'package:pegadaian_digital/main.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Onboarding 1"),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingPage()));
            },
            child: const Text("Kembali ke Login"),
          ),
        ],
      ),
    ),
  );
  }
}