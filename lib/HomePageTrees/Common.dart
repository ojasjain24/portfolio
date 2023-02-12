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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.center,
          child: oNeonText(
            text: "Tools and Technologies Inventory",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        // added a sized box at the end and start so that it don't disturb(push down the bottom widgets) the other widgets on hover( icon size changes from 50 to 70). put at both ends for the cases when Icons take two rows
        SizedBox(
          width: screenSize.width,
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              ...PortfolioDetails.skillsList
                  .map((e) => Tooltip(
                        child: expandOnHover(skillIcon: e.imageAddress),
                        message: e.link,
                      ))
                  .toList(),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: screenSize.width,
          child: Align(
            alignment: Alignment.center,
            child: oNeonText(
              text: "Projects",
              spreadColor: MainSpreadColor,
              textSize: HeadingFontSize,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...(PortfolioDetails.experienceList
                  .map((e) => buildsCard(
                        assetImage: e.assetImage,
                        name: e.name,
                        description: e.description,
                        links: e.links,
                        isCurrent: e.isCurrent,
                      ))
                  .toList())
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.center,
          child: oNeonText(
            text: "Technical Work Experiences",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
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
        ),
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.center,
          child: oNeonText(
            text: "Non-technical Work Experiences",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
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
        ),
        const SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.center,
          child: oNeonText(
            text: "Volunteer Experience",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...(PortfolioDetails.volunteerWorksList
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
        ),
        const SizedBox(
          height: 40,
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
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
            onTap: () {},
            onHover: (value) {
              if (value) {
                setState(() {
                  scale = 1.4;
                });
              } else {
                setState(() {
                  scale = 1.0;
                });
              }
            },
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Transform.scale(
                scale: scale,
                child: SvgPicture.network(
                  widget.skillIcon,
                  height: iconSize,
                  width: iconSize,
                ),
              ),
            )),
      ],
    );
  }
}
