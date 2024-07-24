import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quiz_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) { // track changes in animation

      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement( // replaces current route with new route
          context,
          PageTransition(
            type: PageTransitionType.leftToRight,
            duration: Duration(milliseconds: 1000),
            child: MainScreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered Lottie animation
          Center(
            child: Lottie.asset(
              'assets/splashIcon.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller.duration = composition.duration;
                _controller.forward(); // Start animation from the beginning to end
              },
            ),
          ),
        ],
      ),
    );
  }
}
