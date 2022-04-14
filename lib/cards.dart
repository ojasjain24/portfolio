import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/appConstents.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/WorksModel.dart';
import 'models/icon_link_model.dart';

Widget buildsCard(
    {String? assetImage,
    required String name,
    required String description,
    required List<IconLinkModel>? links}) {
  return oNeonContainer(
    clipBehaviour: Clip.antiAlias,
    lightSpreadRadius: 4,
    lightBlurRadius: 12,
    borderWidth: 3,
    borderRadius: BorderRadius.circular(CardRadius),
    containerColor: Colors.black,
    spreadColor: CardSpreadColor,
    width: 450,
    height: 410,
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
              assetImage ?? "assets/images/idea.png",
              width: 180,
              height: 180,
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
                  spreadColor: CardTitleColor,
                  textSize: 25,
                ),
                const SizedBox(
                  height: 10,
                ),
                oNeonText(
                  textAlign: TextAlign.justify,
                  text: description,
                  maxLine: 6,
                  textOverflow: TextOverflow.ellipsis,
                  spreadColor: CardDescriptionColor,
                  textSize: 15,
                ),
                const SizedBox(
                  height: 5,
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

Widget worksCard(WorksModel worksModel, Size screenSize, double parentPadding) {
  return InkWell(
    onTap: () {
      launch(worksModel.link ?? "");
    },
    child: oNeonContainer(
        width: 450,
        height: 260,
        spreadColor: CardSpreadColor,
        padding: EdgeInsets.all(CardPadding),
        containerColor: Colors.black,
        borderRadius: BorderRadius.circular(10),
        borderWidth: 3,
        lightSpreadRadius: 4,
        lightBlurRadius: 12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  worksModel.logo ?? "assets/images/office-building.png",
                  width: 65,
                  height: 65,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    oNeonText(
                      text: worksModel.companyName,
                      fontWeight: FontWeight.bold,
                      spreadColor: CardTitleColor,
                      textSize: CardTitleFontSize,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: screenSize.width < 450 + 2 * parentPadding
                          ? screenSize.width -
                              2 * CardPadding -
                              2 * parentPadding -
                              130
                          : 300,
                      child: oNeonText(
                        textOverflow: TextOverflow.ellipsis,
                        maxLine: 2,
                        textAlign: TextAlign.start,
                        text: worksModel.title,
                        spreadColor: CardTitleColor,
                        fontWeight: FontWeight.w400,
                        textSize: CardTitleFontSize - 5,
                        isSoftWrap: true,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    oNeonText(
                      text: "${worksModel.startDate} - ${worksModel.endDate}",
                      spreadColor: CardDescriptionColor,
                      fontWeight: FontWeight.w200,
                      textSize: CardDescriptionFontSize,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            oNeonText(
              maxLine: 6,
              spreadColor: CardDescriptionColor,
              isSoftWrap: true,
              textAlign: TextAlign.start,
              text: "${worksModel.description}",
              fontWeight: FontWeight.bold,
              textSize: CardDescriptionFontSize,
              blurRadius: 10,
            )
          ],
        )),
  );
}
