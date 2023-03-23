import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/HomePageTrees/Common.dart';
import 'package:portfolio/data_file.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_constants.dart';

Widget widgetTreeVertical(size) {
  return Container(
    clipBehavior: Clip.none,
    padding: const EdgeInsets.all(20),
    alignment: Alignment.bottomCenter,
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
              FlickerNeonText(
                flickerTimeInMilliSeconds: 1000,
                randomFlicker: true,
                text: PortfolioDetails.myName,
                fontFamily: 'Monoton',
                textSize: 64,
                blurRadius: 20,
                spreadColor: MainSpreadColor,
              ),
              Container(
                clipBehavior: Clip.none,
                height: size.width,
                width: size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, size.height / 5, 0, 0),
                      alignment: Alignment.topCenter,
                      child: NeonLine(
                        lineWidth: size.width,
                        lineHeight: 3,
                        lightSpreadRadius: 2,
                        lightBlurRadius: 15,
                        spreadColor: MainSpreadColor,
                      ),
                      clipBehavior: Clip.none,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: TriangleClipperVertical(),
                        child: Image.asset(
                          PortfolioDetails.profileImage,
                          fit: BoxFit.fitHeight,
                          height: size.width,
                          width: size.width * 0.9,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: size.width / 2 - 20,
                      child: NeonLine(
                        transformAlignment: Alignment.bottomRight,
                        transform: Matrix4.rotationZ(atan(2.2)),
                        lineWidth: size.width / sin(atan(2.2)),
                        lineHeight: 3,
                        lightSpreadRadius: 5,
                        lightBlurRadius: 30,
                        spreadColor: MainSpreadColor,
                        // spreadColor: Colors.green,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: size.width / 2 - 20,
                      child: NeonLine(
                        transformAlignment: Alignment.bottomRight,
                        transform: Matrix4.rotationZ(
                          pi - atan(2.2),
                        ),
                        lineWidth: size.width / sin(atan(2.2)),
                        lineHeight: 3,
                        lightSpreadRadius: 5,
                        lightBlurRadius: 30,
                        spreadColor: MainSpreadColor,
                        // spreadColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              NeonText(
                text: PortfolioDetails.bio,
                textSize: 25,
                blurRadius: 10,
                spreadColor: Colors.green,
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
                      ),
                    ),
                  ))),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          worksTree(padding: 0, screenSize: size),
        ],
      ),
    ),
  );
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
