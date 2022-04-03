import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/data_file.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cards.dart';

Color color =
    Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

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
                          oFlickerNeonText(
                            flickerTimeInMilliSeconds: 1000,
                            randomFlicker: true,
                            text: PortfolioDetails.myName,
                            textSize: 96,
                            blurRadius: 40,
                            spreadColor: color,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          oNeonText(
                            text: PortfolioDetails.bio,
                            textSize: 30,
                            blurRadius: 20,
                            spreadColor: Colors.yellow,
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
                            PortfolioDetails.profileImage,
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
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: oNeonText(
                      text: "Ojas Builds",
                      spreadColor: color,
                      textSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    runSpacing: 20,
                    spacing: 30,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      ...(PortfolioDetails.experienceList
                          .map((e) => buildsCard(
                                assetImage: e.assetImage,
                                name: e.name,
                                description: e.description,
                                links: e.links,
                              ))
                          .toList())
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    )
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
