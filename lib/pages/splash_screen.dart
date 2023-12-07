import 'package:flutter/material.dart';
import 'package:lodger_rent/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      body: SafeArea(
        child: Center(
          child: Text(
            "LOGO",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
