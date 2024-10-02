import "package:flutter/material.dart";

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome"),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Kembali ke Login"),
          ),
        ],
      ),
    ),
  );
}
}