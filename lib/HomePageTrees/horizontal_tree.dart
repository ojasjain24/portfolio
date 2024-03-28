import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/HomePageTrees/Common.dart';
import 'package:portfolio/data_file.dart';
import 'package:url_launcher/url_launcher.dart';

Widget widgetTreeHorizontal(size) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: SizedBox(
      width: size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.none,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
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
                        FlickerNeonText(
                          flickerTimeInMilliSeconds: 1000,
                          randomFlicker: false,
                          text: PortfolioDetails.myName,
                          fontFamily: 'Monoton',
                          textSize: (80),
                          blurRadius: 40,
                          spreadColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        NeonText(
                          text: PortfolioDetails.bio,
                          textSize: 30,
                          blurRadius: 20,
                          spreadColor: Colors.white,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          ...(PortfolioDetails.socials.map((e) => InkWell(
                              onTap: () {
                                launch(e.link);
                              },
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset(
                                    e.imageAddress,
                                    height: 50,
                                    width: 50,
                                  ))))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              MainImage(size: Size(0.95 * size.width, 0.95 * size.height)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          projectsTree(padding: 40, screenSize: size),
        ],
      ),
    ),
  );
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

class MainImage extends StatefulWidget {
  const MainImage({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  State<StatefulWidget> createState() {
    return MainImageState();
  }
}

//TODO change color of frame on tap.

class MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    Color triangleColor =
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    return Container(
      clipBehavior: Clip.none,
      height: widget.size.height,
      width: widget.size.width / 2,
      alignment: Alignment.bottomRight,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsets.fromLTRB(0, widget.size.height / 3, 0, 0),
            alignment: Alignment.topCenter,
            child: NeonLine(
              lineWidth: widget.size.width / 2.5,
              lineHeight: 3,
              lightSpreadRadius: 10,
              lightBlurRadius: 60,
              spreadColor: triangleColor,
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: ClipPath(
              clipper: TriangleClipperHorizontal(),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    // triangleColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                    triangleColor =
                        Color((Random().nextInt(0xFFFFFF))).withOpacity(0.8);
                  });
                },
                child: Image.asset(
                  PortfolioDetails.profileImage,
                  fit: BoxFit.fitHeight,
                  height: widget.size.height / 1.2,
                  width: widget.size.width / 2,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0, // size.height*5 /12,
            right: widget.size.width / 4,
            child: NeonLine(
              transformAlignment: Alignment.bottomRight,
              transform: Matrix4.rotationZ(atan(
                4.166 * (widget.size.height / widget.size.width),
              )),
              lineWidth: widget.size.height /
                  (1.2 *
                      sin(atan(
                          3.33 * (widget.size.height / widget.size.width)))),
              lineHeight: 3,
              lightSpreadRadius: 10,
              lightBlurRadius: 60,
              spreadColor: triangleColor,
              // spreadColor: Colors.green,
            ),
          ),
          Positioned(
            bottom: 0, // size.height*5 /12,
            right: widget.size.width / 4,
            child: NeonLine(
              transformAlignment: Alignment.bottomRight,
              transform: Matrix4.rotationZ(pi -
                  atan(
                    4.166 * (widget.size.height / widget.size.width),
                  )),
              lineWidth: widget.size.height /
                  (1.2 *
                      sin(atan(
                          3.33 * (widget.size.height / widget.size.width)))),
              lineHeight: 3,
              lightSpreadRadius: 10,
              lightBlurRadius: 60,
              spreadColor: triangleColor,
              // spreadColor: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/click-here.png",
              height: 200,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
