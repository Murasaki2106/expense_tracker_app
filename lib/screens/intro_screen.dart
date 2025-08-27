import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {  // <-- Change 'IntroPage' to your screen name
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,  // full screen width
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          // Background color or gradient
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // App logo or intro image
            const Icon(Icons.ac_unit, size: 120, color: Colors.white), // <-- Replace with your image/logo
            const SizedBox(height: 30),

            // App intro text
            const Text(
              "Welcome to MyApp",  // <-- Change text
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');  // <-- Change to your next screen
              },
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
