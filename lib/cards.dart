import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/icon_link_model.dart';

Color descriptionColor = Colors.lime;
Color nameColor = Colors.deepOrangeAccent;
Color containerSpreadColor = Colors.green.withOpacity(0.5);

Widget buildsCard(
    {required String assetImage,
    required String name,
    required String description,
    required List<IconLinkModel>? links}) {
  return oNeonContainer(
    clipBehaviour: Clip.antiAlias,
    lightSpreadRadius: 5,
    lightBlurRadius: 15,
    borderWidth: 3,
    borderRadius: BorderRadius.circular(10),
    containerColor: Colors.black,
    spreadColor: containerSpreadColor,
    width: 300,
    padding: const EdgeInsets.only(
      left: 10,
      right: 10,
      bottom: 10,
    ),
    child: Column(
      children: [
        Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Image.asset(
              assetImage,
              width: 200,
              height: 200,
              fit: BoxFit.fitWidth,
            )),
        Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                oNeonText(
                  blurRadius: 10,
                  isSoftWrap: true,
                  textAlign: TextAlign.center,
                  text: name,
                  spreadColor: nameColor,
                  textSize: 25,
                ),
                const SizedBox(
                  height: 10,
                ),
                oNeonText(
                  textAlign: TextAlign.justify,
                  text: description,
                  spreadColor: descriptionColor,
                  textSize: 15,
                ),
                Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      ...(links != null
                          ? links.map((e) => InkWell(
                                onTap: () {
                                  launch(e.link);
                                },
                                child: Image.asset(
                                  e.imageAddress,
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.fitHeight,
                                ),
                              ))
                          : []),
                    ])
              ],
            )),
      ],
    ),
  );
}
