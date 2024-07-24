import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Quiz App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: screenHeight * 0.5,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_1.png'),
                // Replace with your image path
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(20.0)),
        ),
        Positioned(
            right: 0,
            left: 0,
            top: 35.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      shape: BoxShape.rectangle,
                      color: Colors.white,

                  ),
                )
              ],
            ))
      ],
    ));
  }
}
