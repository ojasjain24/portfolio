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
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
                        Text(
                          portfolioDetails.myName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 96,
                              shadows: [
                                Shadow(color: color, blurRadius: 40),
                              ]),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          portfolioDetails.bio,
                          maxLines: 10,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              shadows: [
                                Shadow(color: Colors.yellow, blurRadius: 20),
                              ]),
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
                height: size.height,
                width: size.width / 2,
                alignment: Alignment.bottomRight,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
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
                        clipper: TriangleClipper(),
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
                            (1.2 *
                                sin(atan(3.33 * (size.height / size.width)))),
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
                            (1.2 *
                                sin(atan(3.33 * (size.height / size.width)))),
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
            ],
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
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
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
