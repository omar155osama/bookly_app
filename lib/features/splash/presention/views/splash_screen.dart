import 'package:clean_boookly/features/home/peresention/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1600),
      vsync: this,
    );
    _fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: Image.asset("assets/Logo.png", fit: BoxFit.contain),
        ),
      ),
    );
  }
}
