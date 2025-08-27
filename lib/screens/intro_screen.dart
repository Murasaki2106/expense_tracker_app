import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  // <-- Change 'IntroPage' to your screen name
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // full screen width
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          // Background color or gradient
          
            color: 
              Color(0xEDEDE9), // very light green (soft tint of primary #2E7D32)
          
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo or intro image
           IconButton(
            icon: Image.asset(
              'assets/app_logo_text.png',
              width: 120,
              height: 120,
            ),
  onPressed: () {
  },
), // <-- Replace with your image/logo
            const SizedBox(height: 30),

            // App intro text
            const Text(
              "Welcome to MyApp", // <-- Change text
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/login',
                ); // <-- Change to your next screen
              },
              child: const Text("Get Started",
              style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
