import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quiz_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  InterstitialAd? _interstitialAd;
  bool isAdLoaded = false;


  /// Loads an interstitial ad.
  void loadAd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            setState(() {
              _interstitialAd = ad;
              isAdLoaded = true;
              debugPrint('$ad loaded.');
            });
          },
          onAdFailedToLoad: (error) {
            isAdLoaded = false;
            debugPrint("Interstitial Ad failed to load: $error");
          },
        ));
  }

  void showAd() {
    if (isAdLoaded && _interstitialAd != null) {
      _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          goToMainScreen();
          setState(() {
            isAdLoaded = false;
          });
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          setState(() {
            isAdLoaded = false;
          });
          loadAd();
          goToMainScreen();
        },
      );
      _interstitialAd?.show();
    } else {
      debugPrint("Interstitial Ad not loaded yet.");
      goToMainScreen();
    }
  }

  void goToMainScreen() {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.leftToRight,
        duration: Duration(milliseconds: 1000),
        child: MainScreen(),
      ),
    );
  }

  @override
  void initState() {
    loadAd();
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        showAd();
        debugPrint('show add called');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _interstitialAd?.dispose();
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
                image: AssetImage('assets/splash_img.png'),
                // Replace with your image path
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
                _controller.forward(); // Start the animation
              },
            ),
          ),
        ],
      ),
    );
  }
}
