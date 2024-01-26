import 'package:flutter/material.dart';

import '../Screens/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Splash screen image icon
            Image.asset(
              'assets/web/images/image_4_modified.png', // replace with your image path
              width: 100, // adjust the width as needed
              height: 100, // adjust the height as needed
            ),
            SizedBox(height: 16), // add some spacing

            // App name with white text
            Text(
              'FireAI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreenShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeScreen();
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
