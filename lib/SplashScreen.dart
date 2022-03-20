import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/dataFile.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => homePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    late final AnimationController _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      oFlickerNeonPoint(
                        spreadColor: Colors.blue,
                        flickerTimeInMilliSeconds: 500,
                        lightBlurRadius: 300,
                        lightSpreadRadius: 100,
                      ),
                      oFlickerNeonPoint(
                        spreadColor: Colors.green,
                        flickerTimeInMilliSeconds: 500,
                        lightBlurRadius: 300,
                        lightSpreadRadius: 100,
                      ),
                      oFlickerNeonPoint(
                        spreadColor: Colors.red,
                        flickerTimeInMilliSeconds: 500,
                        lightBlurRadius: 300,
                        lightSpreadRadius: 100,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (_, child) {
                      return Transform.rotate(
                        angle: _controller.value * 2 * 3.14,
                        child: Image.asset(
                          "assets/images/neon_widgets_logo.png",
                          height: 300,
                          width: 300,
                        ),
                      );
                    },
                    child: FlutterLogo(size: 200),
                  ),
                ),
              ],
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              portfolioDetails.tagLine,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
