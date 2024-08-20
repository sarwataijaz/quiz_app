import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizEnd extends StatefulWidget {
  final int score;

  const QuizEnd({super.key, required this.score});

  @override
  State<QuizEnd> createState() => _QuizEndState();
}

class _QuizEndState extends State<QuizEnd> with SingleTickerProviderStateMixin {
  int userScore = 0;
  late Animation<double> _animation;
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userScore = widget.score;

    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0, end: 200).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward(); // from beginning to end
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Ensure _animaton is initialized before trying to access its value
    if (_animation == null) {
      print('no animation');
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.sp, right: 30.sp, top: 30.sp),
            child: Center(
              child: Container(
                width: 200,  // Fixed width
                height: 200, // Fixed height
                child: ScaleTransition(
                  scale: _animation,
                  alignment: Alignment.center, // Scale from the center
                  child: Image.asset(
                    'assets/completed.png',
                    width: 200,  // Fixed width
                    height: 200,
                    fit: BoxFit.contain, // Ensures the image remains within bounds
                  ),
                ),
              ),
            ),
          ),
          FittedBox(
            child: Text(
              'Your Score is: ',
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                  fontSize: 26.sp,
                  color: Color(0xFF5B1CAE),
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0.sp, right: 18.0.sp, top: 15.sp),
            child: Text(
              '$userScore/3',
              style: GoogleFonts.abrilFatface(
                textStyle: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.green,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
