import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../app_constants.dart';
import '../cards.dart';
import '../data_file.dart';
import '../tabs.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WorkPageState();
  }
}

class WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryBlack.shade400,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/star.webp"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Tabs(context: context, size: size, currentTab: "Works"),
              size.width >= 1020?worksTree(padding: 40, screenSize: size):worksTree(padding: 0, screenSize: size)
            ],
          ),
        ),
      ),
    );
  }
}

Widget worksTree({double padding = 20, required Size screenSize}) {
  return Container(
    padding: EdgeInsets.all(padding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Align(
          alignment: Alignment.center,
          child: NeonText(
            text: "Technical Work Experiences",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...(PortfolioDetails.techWorksList
                  .map((e) => WorksCard(
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
          child: NeonText(
            text: "Non-technical Work Experiences",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...(PortfolioDetails.leadWorksList
                  .map(
                    (e) => WorksCard(
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
          child: NeonText(
            text: "Volunteer Experience",
            spreadColor: MainSpreadColor,
            textSize: HeadingFontSize,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: screenSize.width,
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...(PortfolioDetails.volunteerWorksList
                  .map(
                    (e) => WorksCard(
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
