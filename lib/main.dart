import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Splashscreens/FSplash.dart';
import 'onBoardingScreens/utils/colors.dart';
import 'onBoardingScreens/view/onBoardingScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get the SharedPreferences instance
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Check if the onboarding is complete
  bool onboardingComplete = prefs.getBool('onboarding_complete') ?? false;

  // Run the app
  runApp(MyApp(onboardingComplete: onboardingComplete));
}

class MyApp extends StatelessWidget {
  final bool onboardingComplete;

  const MyApp({Key? key, required this.onboardingComplete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fire AI',
      theme: ThemeData(
        brightness: Brightness.dark, // Set the brightness to dark
        scaffoldBackgroundColor: Colors.black, // Set background color to black
        primaryColor: Colors.black, // Set primary color to black
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 25,
            color: MyColors.titleTextColor,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 18,
            color: MyColors.subTitleTextColor,
            fontWeight: FontWeight.w400,
            wordSpacing: 1.2,
            height: 1.2,
          ),
          headline3: TextStyle(
            fontSize: 18,
            color: MyColors.titleTextColor,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: onboardingComplete ? SplashScreenShow() : const onBoardingScreenHome(),
    );
  }
}
