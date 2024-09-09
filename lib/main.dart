import 'package:flutter/material.dart';
import 'package:hamoj_vendor/view/splash_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
        ),
      ).copyWith(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: primaryColor,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
