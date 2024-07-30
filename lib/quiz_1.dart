import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Cplusplus extends StatefulWidget {
  const Cplusplus({super.key});

  @override
  State<Cplusplus> createState() => _CplusplusState();
}

class _CplusplusState extends State<Cplusplus> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
                  image: AssetImage('assets/c++_bg.png'),
                  // Replace with your image path
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        ),
        Positioned(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: screenHeight * 0.3,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double font_size = constraints.maxHeight * 0.2;
                  return Text(
                    'Question # 1',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xFF5B1CAE),
                      ),
                    ),
                  );
                }),
                LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double font_size = constraints.maxHeight * 0.2;
                  return Text(
                    textAlign: TextAlign.center,
                    'What is the correct way to declare a variable in C++?',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 19.sp,
                          color: Color(0xFF5B1CAE),
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: screenHeight * 0.55,
          child: Container(
            height: screenHeight * 0.08,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FittedBox(
                  child: Text(
                    'A',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xFF5B1CAE),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    textAlign: TextAlign.center,
                    'int 1variable',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 19.sp,
                          color: Color(0xFF5B1CAE),
                         // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: screenHeight * 0.65,
          child: Container(
            height: screenHeight * 0.08,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FittedBox(
                  child: Text(
                    'B',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 20.sp,
                          color: Color(0xFF5B1CAE),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                FittedBox(
                  child: Text(
                    textAlign: TextAlign.center,
                    'int variable1',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 19.sp,
                        color: Color(0xFF5B1CAE),
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: screenHeight * 0.75,
          child: Container(
            height: screenHeight * 0.08,
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
              padding: EdgeInsets.only(left:16.0.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: Text(
                      'C',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0xFF5B1CAE),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      textAlign: TextAlign.center,
                      'integer variable1',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 19.sp,
                          color: Color(0xFF5B1CAE),
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: screenHeight * 0.85,
          child: Container(
            height: screenHeight * 0.08,
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
              padding: EdgeInsets.only(left:16.0.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FittedBox(
                    child: Text(
                      'D',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0xFF5B1CAE),
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      textAlign: TextAlign.center,
                      'var int variable1',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 19.sp,
                          color: Color(0xFF5B1CAE),
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
