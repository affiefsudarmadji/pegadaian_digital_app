import "package:flutter/material.dart";
import "package:pegadaian_digital/home.dart";
import "package:pegadaian_digital/main.dart";
import "package:pegadaian_digital/onboarding_1.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home"),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Onboarding1()));
            },
            child: const Text("Kembali ke Login"),
          ),
        ],
      ),
    ),
  );
}
}