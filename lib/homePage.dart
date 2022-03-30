import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/dataFile.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return homePageState();
  }
}

class homePageState extends State<homePage> with TickerProviderStateMixin {
  Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> widgetTreeHorizontal() {
      return [
        Container(
          clipBehavior: Clip.none,
          padding: const EdgeInsets.all(40),
          height: size.height,
          alignment: Alignment.center,
          width: size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  oFlickerNeonText(
                    flickerTimeInMilliSeconds: 1000,
                    randomFlicker: true,
                    text: portfolioDetails.myName,
                    textSize: 96,
                    blurRadius: 40,
                    spreadColor: color,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  oNeonText(
                    text: portfolioDetails.bio,
                    textSize: 30,
                    blurRadius: 20,
                    spreadColor: Colors.yellow,
                  ),
                ],
              ),
              Row(
                children: [
                  ...(portfolioDetails.socials.map((e) => InkWell(
                      onTap: () {
                        launch(e.link);
                      },
                      child: Image.asset(
                        e.imageAddress,
                        height: 50,
                        width: 50,
                      )))),
                ],
              )
            ],
          ),
        ),
        Container(
          clipBehavior: Clip.none,
          height: size.height,
          width: size.width / 2,
          alignment: Alignment.bottomRight,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                clipBehavior: Clip.none,
                padding: EdgeInsets.fromLTRB(0, size.height / 3, 0, 0),
                alignment: Alignment.topCenter,
                child: oNeonLine(
                  lineWidth: size.width / 2.5,
                  lineHeight: 3,
                  lightSpreadRadius: 10,
                  lightBlurRadius: 60,
                  spreadColor: color,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: ClipPath(
                  clipper: TriangleClipperHorizontal(),
                  child: Image.asset(
                    portfolioDetails.profileImage,
                    fit: BoxFit.fitHeight,
                    height: size.height / 1.2,
                    width: size.width / 2,
                  ),
                ),
              ),
              Positioned(
                bottom: 0, // size.height*5 /12,
                right: size.width / 4,
                child: oNeonLine(
                  transformAlignment: Alignment.bottomRight,
                  transform: Matrix4.rotationZ(atan(
                    4.166 * (size.height / size.width),
                  )),
                  lineWidth: size.height /
                      (1.2 * sin(atan(3.33 * (size.height / size.width)))),
                  lineHeight: 3,
                  lightSpreadRadius: 10,
                  lightBlurRadius: 60,
                  spreadColor: color,
                  // spreadColor: Colors.green,
                ),
              ),
              Positioned(
                bottom: 0, // size.height*5 /12,
                right: size.width / 4,
                child: oNeonLine(
                  transformAlignment: Alignment.bottomRight,
                  transform: Matrix4.rotationZ(pi -
                      atan(
                        4.166 * (size.height / size.width),
                      )),
                  lineWidth: size.height /
                      (1.2 * sin(atan(3.33 * (size.height / size.width)))),
                  lineHeight: 3,
                  lightSpreadRadius: 10,
                  lightBlurRadius: 60,
                  spreadColor: color,
                  // spreadColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ];
    }

    List<Widget> widgetTreeVertical() {
      return [
        Container(
          clipBehavior: Clip.none,
          padding: const EdgeInsets.all(20),
          height: size.height,
          alignment: Alignment.center,
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            clipBehavior: Clip.none,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    oFlickerNeonText(
                      flickerTimeInMilliSeconds: 1000,
                      randomFlicker: true,
                      text: portfolioDetails.myName,
                      textSize: 74,
                      blurRadius: 20,
                      spreadColor: color,
                    ),
                    Container(
                      clipBehavior: Clip.none,
                      height: size.width,
                      width: size.width,
                      alignment: Alignment.bottomRight,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(0, size.height / 5, 0, 0),
                            alignment: Alignment.topCenter,
                            child: oNeonLine(
                              lineWidth: size.width,
                              lineHeight: 3,
                              lightSpreadRadius: 2,
                              lightBlurRadius: 15,
                              spreadColor: color,
                            ),
                            clipBehavior: Clip.none,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: ClipPath(
                              clipper: TriangleClipperVertical(),
                              child: Image.asset(
                                portfolioDetails.profileImage,
                                fit: BoxFit.fitHeight,
                                height: size.width,
                                width: size.width * 0.9,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: size.width / 2 - 20,
                            child: oNeonLine(
                              transformAlignment: Alignment.bottomRight,
                              transform: Matrix4.rotationZ(atan(2.2)),
                              lineWidth: size.width / sin(atan(2.2)),
                              lineHeight: 3,
                              lightSpreadRadius: 5,
                              lightBlurRadius: 30,
                              spreadColor: color,
                              // spreadColor: Colors.green,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: size.width / 2 - 20,
                            child: oNeonLine(
                              transformAlignment: Alignment.bottomRight,
                              transform: Matrix4.rotationZ(
                                pi - atan(2.2),
                              ),
                              lineWidth: size.width / sin(atan(2.2)),
                              lineHeight: 3,
                              lightSpreadRadius: 5,
                              lightBlurRadius: 30,
                              spreadColor: color,
                              // spreadColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    oNeonText(
                      text: portfolioDetails.bio,
                      textSize: 25,
                      blurRadius: 10,
                      spreadColor: Colors.yellow,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...(portfolioDetails.socials.map(
                      (e) => InkWell(
                        onTap: () {
                          launch(e.link);
                        },
                        child: Image.asset(
                          e.imageAddress,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ];
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: size.width >= 850
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widgetTreeHorizontal())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widgetTreeVertical()),
        ),
      ),
    );
  }
}

class TriangleClipperHorizontal extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 10, 0);
    path.lineTo(size.width - size.width / 10, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperHorizontal oldClipper) => false;
}

class TriangleClipperVertical extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperVertical oldClipper) => false;
}
