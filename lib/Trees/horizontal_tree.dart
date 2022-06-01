import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/Trees/Common.dart';
import 'package:portfolio/data_file.dart';
import 'package:url_launcher/url_launcher.dart';

import '../appConstents.dart';

List<Widget> widgetTreeHorizontal(size) {
  return [
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: size.width,
        child: Column(
          children: [
            Row(
              children: [
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
                          const SizedBox(
                            height: 100,
                          ),
                          oFlickerNeonText(
                            flickerTimeInMilliSeconds: 1000,
                            randomFlicker: true,
                            text: PortfolioDetails.myName,
                            textSize: 96,
                            blurRadius: 40,
                            spreadColor: MainSpreadColor,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          oNeonText(
                            text: PortfolioDetails.bio,
                            textSize: 35,
                            blurRadius: 20,
                            spreadColor: Colors.deepPurple,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ...(PortfolioDetails.socials.map((e) => InkWell(
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
                mainImage(size: Size(0.95*size.width, 0.95*size.height)),
              ],
            ),
            WorksTree(padding: 40, screenSize: size),
          ],
        ),
      ),
    ),
  ];
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

class mainImage extends StatefulWidget {
  mainImage({required this.size});

  Size size;

  @override
  State<StatefulWidget> createState() {
    return mainImageState();
  }
}

//TODO change color of frame on tap.

class mainImageState extends State<mainImage> {
  @override
  Widget build(BuildContext context) {
    Color triangleColor = MainSpreadColor;

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
            child: oNeonLine(
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
                    triangleColor =
                        Color((Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0);
                    // print(triangleColor);
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
            child: oNeonLine(
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
            child: oNeonLine(
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
        ],
      ),
    );
  }
}
