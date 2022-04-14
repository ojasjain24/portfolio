import 'package:flutter/material.dart';
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
                .map((e) => worksCard(e, screenSize, padding))
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
                .map((e) => worksCard(e, screenSize, padding))
                .toList())
          ],
        ),
      ],
    ),
  );
}
