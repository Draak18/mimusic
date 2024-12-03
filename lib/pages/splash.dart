import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mimusic/login/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SizedBox(
        width: 293,
        height: 293,
        child: Lottie.asset("assets/Lottie/gato-pisca ‐ Feito com o Clipchamp.mp4.lottie.json"),
      ),
      splashIconSize: 150,
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1), 
      nextScreen: const Login(),
      duration: 6000, 
    );
  }
}
