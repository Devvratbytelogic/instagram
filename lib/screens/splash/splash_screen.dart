import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/screens/bottomnav/bottom_nav.dart';
import 'package:instagram/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      if (mounted) { // Ensures widget is still in the tree
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavigationScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imageUrl: "main-logo.png"),
            const SizedBox(height: 10),
            UiHelper.customImage(imageUrl: "title-logo.png"),
          ],
        ),
      ),
    );
  }
}
