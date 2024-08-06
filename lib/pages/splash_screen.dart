import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:login_app/pages/auth_page.dart';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          SingleChildScrollView(
            child: Center(
              child: LottieBuilder.asset(
                  "lib/images/Animation - 1709495326907.json"),
            ),
          ),
        ],
      ),
      nextScreen: const AuthPage(),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 1200,
      duration: 2800,
      backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
    );
  }
}
