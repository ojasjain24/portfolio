import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../appConstents.dart';
import '../cards.dart';
import '../data_file.dart';

Widget WorksTree({double padding = 20, required Size screenSize}) {
  return Container(
    padding: EdgeInsets.all(padding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: oNeonText(
            text: "Ojas' Magic Tools",
            spreadColor: MainSpreadColor,
            textSize: 35,
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        // added a sized box at the end and start so that I don't disturb(push down the bottom widgets) the other widgets on hover( icon size changes from 50 to 70). put at both ends for the cases when Icons take two rows
        Wrap(
          children: [
            const SizedBox(
              height: 70,
            ),
            ...PortfolioDetails.skillsList
                .map((e) => expandOnHover(skillIcon: e.imageAddress))
                .toList(),
            const SizedBox(
              height: 70,
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: oNeonText(
            text: "Ojas' Builds",
            spreadColor: MainSpreadColor,
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
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: oNeonText(
            text: "Ojas Works on Tech",
            spreadColor: MainSpreadColor,
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
            ...(PortfolioDetails.techWorksList
                .map((e) => worksCard(
                      worksModel: e,
                      screenSize: screenSize,
                      parentPadding: padding,
                    ))
                .toList())
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: oNeonText(
            text: "Ojas Leads",
            spreadColor: MainSpreadColor,
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
            ...(PortfolioDetails.leadWorksList
                .map(
                  (e) => worksCard(
                    worksModel: e,
                    screenSize: screenSize,
                    parentPadding: padding,
                  ),
                )
                .toList())
          ],
        ),
      ],
    ),
  );
}

class expandOnHover extends StatefulWidget {
  expandOnHover({required this.skillIcon});

  String skillIcon;

  @override
  State<StatefulWidget> createState() {
    return expandOnHoverState();
  }
}

class expandOnHoverState extends State<expandOnHover> {
  double iconSize = 50;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: () {},
          onHover: (val) {
            iconSize = val ? 70 : 50;
            setState(() {});
          },
          child: SvgPicture.network(
            widget.skillIcon,
            height: iconSize,
            width: iconSize,
          ),
        ),
      ],
    );
  }
}
