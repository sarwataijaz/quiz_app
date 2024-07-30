import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_1.dart';
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
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/main_img.png'),
                    // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
          Positioned(
            right: screenWidth * 0.1,
            left: screenWidth * 0.1,
            top: screenHeight * 0.37,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cplusplus())
                );
              },
              child: Container(
                height: screenHeight * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      spreadRadius: 3, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LayoutBuilder(
                        builder: (BuildContext context,
                            BoxConstraints constraints) {
                          double img_size = constraints.maxHeight * 0.6;
                          return Image.asset(
                            'assets/c++.png',
                            height: img_size,
                          );
                        }
                    ),
                    LayoutBuilder(
                        builder: (BuildContext context,
                            BoxConstraints constraints) {
                          double font_size = constraints.maxHeight * 0.3;
                          return Text(
                            'C++',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: font_size,
                                color: Color(0xFF5B1CAE)
                              ),
                            ),
                          );
                        }
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: screenWidth * 0.1,
            left: screenWidth * 0.1,
            top: screenHeight * 0.57,
            child: Container(
              height: screenHeight * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LayoutBuilder(
                      builder: (BuildContext context,
                          BoxConstraints constraints) {
                        double img_size = constraints.maxHeight * 0.6;
                        return Image.asset(
                          'assets/java.png',
                          height: img_size,
                        );
                      }
                  ),
                  LayoutBuilder(
                      builder: (BuildContext context,
                          BoxConstraints constraints) {
                        double font_size = constraints.maxHeight * 0.3;
                        return Text(
                          'Java',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: font_size,
                                color: Color(0xFF5B1CAE)
                            ),
                          ),
                        );
                      }
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: screenWidth * 0.1,
            left: screenWidth * 0.1,
            top: screenHeight * 0.77,
            child: Container(
              height: screenHeight * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3), // Changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left:20.0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LayoutBuilder(
                        builder: (BuildContext context,
                            BoxConstraints constraints) {
                          double img_size = constraints.maxHeight * 0.6;
                          return Image.asset(
                            'assets/python.png',
                            height: img_size,
                          );
                        }
                    ),
                    LayoutBuilder(
                        builder: (BuildContext context,
                            BoxConstraints constraints) {
                          double font_size = constraints.maxHeight * 0.3;
                          return Text(
                            'Python',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: font_size,
                                  color: Color(0xFF5B1CAE)
                              ),
                            ),
                          );
                        }
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
