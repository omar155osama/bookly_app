import 'package:clean_boookly/core/constant.dart';
import 'package:clean_boookly/features/splash/presention/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        splashFactory: NoSplash.splashFactory,
      ),
      home: SplashScreen(),
    );
  }
}
