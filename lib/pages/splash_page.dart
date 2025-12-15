import 'package:flutter/material.dart';
import 'package:foodie_app_2/pages/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _startAnimation = false;

  @override
  void initState() {
    super.initState();

    // Animation start (context tayyor bo‘lgach)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _startAnimation = true;
      });
    });

    // Navigate after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: _startAnimation ? 1 : 0,
          child: Image.asset("assets/images/splash.png", width: 200),
        ),
      ),
    );
  }
}
