import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/models/education_model.dart';
import 'package:portfolio/models/generic_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/WorksModel.dart';
import 'models/icon_link_model.dart';

class BuildsCard extends StatefulWidget {
  const BuildsCard({
    Key? key,
    this.assetImage,
    required this.name,
    required this.description,
    required this.links,
    this.isCurrent = false,
  }) : super(key: key);

  final String? assetImage;
  final String name;
  final String description;
  final List<IconLinkModel>? links;
  final bool isCurrent;

  @override
  State<StatefulWidget> createState() {
    return BuildsCardState();
  }
}

class BuildsCardState extends State<BuildsCard> {
  Color spreadColor = Colors.transparent;
  Color borderColor = Colors.white54;
  Color titleSpreadColor = Colors.transparent;
  Color titleTextColor = Colors.white54;
  Color discpSpreadColor = Colors.transparent;
  Color discpTextColor = Colors.white54;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= 850) {
      spreadColor = widget.isCurrent ? CardSpreadCurrentColor : CardSpreadColor;
      borderColor = Colors.white;
      titleSpreadColor = CardTitleColor;
      titleTextColor = Colors.white;
      discpSpreadColor = CardDescriptionColor;
      discpTextColor = Colors.white;
      setState(() {});
    }
    return InkWell(
      onHover: (state) {
        if (size.width > 850) {
          spreadColor = state
              ? widget.isCurrent
                  ? CardSpreadCurrentColor
                  : CardSpreadColor
              : Colors.transparent;
          borderColor = state ? Colors.white : Colors.white54;
          titleSpreadColor = state ? CardTitleColor : Colors.transparent;
          titleTextColor = state ? Colors.white : Colors.white54;
          discpSpreadColor = state ? CardDescriptionColor : Colors.transparent;
          discpTextColor = state ? Colors.white : Colors.white54;
          setState(() {});
        }
      },
      onTap: () {
        widget.links != null ? launch(widget.links![0].link) : null;
      },
      child: NeonContainer(
        clipBehavior: Clip.antiAlias,
        lightSpreadRadius: size.width > 850 ? 15 : 4,
        lightBlurRadius: size.width > 850 ? 45 : 10,
        borderWidth: 3,
        borderRadius: BorderRadius.circular(CardRadius),
        containerColor: Colors.black,
        spreadColor: spreadColor,
        borderColor: borderColor,
        width: 440,
        height: 420,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Stack(
          children: [
            Column(
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
                      widget.assetImage ?? "assets/images/idea.png",
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
                      NeonText(
                        blurRadius: 10,
                        isSoftWrap: true,
                        textAlign: TextAlign.center,
                        text: widget.name,
                        spreadColor: titleSpreadColor,
                        textColor: titleTextColor,
                        textSize: CardTitleFontSize,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      NeonText(
                        textAlign: TextAlign.justify,
                        text: widget.description,
                        maxLine: 6,
                        textOverflow: TextOverflow.ellipsis,
                        spreadColor: discpSpreadColor,
                        textColor: discpTextColor,
                        textSize: CardDescriptionFontSize,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.bottomLeft,
              child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    ...(widget.links != null
                        ? widget.links!.map((e) => InkWell(
                              onTap: () {
                                launch(e.link);
                              },
                              child: Image.asset(
                                e.imageAddress,
                                width: 35,
                                height: 35,
                                fit: BoxFit.fitHeight,
                              ),
                            ))
                        : []),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class WorksCard extends StatefulWidget {
  const WorksCard({
    Key? key,
    required this.worksModel,
    required this.screenSize,
    required this.parentPadding,
  }) : super(key: key);

  final WorksModel worksModel;
  final Size screenSize;
  final double parentPadding;

  @override
  State<StatefulWidget> createState() {
    return WorksCardState();
  }
}

class WorksCardState extends State<WorksCard> {
  Color spreadColor = Colors.transparent;
  Color borderColor = Colors.white70;
  Color titleSpreadColor = Colors.transparent;
  Color titleTextColor = Colors.white54;
  Color discpSpreadColor = Colors.transparent;
  Color discpTextColor = Colors.white54;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= 850) {
      spreadColor = widget.worksModel.isCurrent
          ? CardSpreadCurrentColor
          : CardSpreadColor;
      borderColor = Colors.white;
      titleSpreadColor = CardTitleColor;
      titleTextColor = Colors.white;
      discpSpreadColor = CardDescriptionColor;
      discpTextColor = Colors.white;
      setState(() {});
    }
    return InkWell(
      onHover: (state) {
        if (size.width > 850) {
          spreadColor = state
              ? widget.worksModel.isCurrent
                  ? CardSpreadCurrentColor
                  : CardSpreadColor
              : Colors.transparent;
          borderColor = state ? Colors.white : Colors.white70;
          titleSpreadColor = state ? CardTitleColor : Colors.transparent;
          titleTextColor = state ? Colors.white : Colors.white54;
          discpSpreadColor = state ? CardDescriptionColor : Colors.transparent;
          discpTextColor = state ? Colors.white : Colors.white54;
          setState(() {});
        }
      },
      onTap: () {
        launch(widget.worksModel.link ?? "");
      },
      child: NeonContainer(
        width: 456,
        height: 260,
        spreadColor: spreadColor,
        borderColor: borderColor,
        padding: EdgeInsets.all(CardPadding),
        containerColor: Colors.black,
        borderRadius: BorderRadius.circular(10),
        borderWidth: 3,
        lightSpreadRadius: size.width > 850 ? 10 : 4,
        lightBlurRadius: size.width > 850 ? 25 : 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: borderColor,
                  ),
                  child: Image.asset(
                    widget.worksModel.logo ??
                        "assets/images/office-building.png",
                    width: 65,
                    height: 65,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: size.width < 455 ? size.width - 110 : 455 - 150,
                      child: NeonText(
                        textAlign: TextAlign.start,
                        text: widget.worksModel.companyName,
                        fontWeight: FontWeight.bold,
                        spreadColor: titleSpreadColor,
                        textSize: CardTitleFontSize,
                        textColor: titleTextColor,
                        isSoftWrap: true,
                        maxLine: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: widget.screenSize.width <
                              450 + 2 * widget.parentPadding
                          ? widget.screenSize.width -
                              2 * CardPadding -
                              2 * widget.parentPadding -
                              130
                          : 300,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 300,
                        child: NeonText(
                          textOverflow: TextOverflow.ellipsis,
                          maxLine: 2,
                          textAlign: TextAlign.start,
                          text: widget.worksModel.title,
                          spreadColor: discpSpreadColor,
                          textColor: discpTextColor,
                          fontWeight: FontWeight.w400,
                          textSize: CardDescriptionFontSize,
                          isSoftWrap: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    NeonText(
                      text:
                          "${widget.worksModel.startDate} - ${widget.worksModel.endDate}",
                      spreadColor: discpSpreadColor,
                      textColor: discpTextColor,
                      fontWeight: FontWeight.w200,
                      textSize: CardDescriptionFontSize - 1,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            NeonText(
              maxLine: size.width > 850 ? 6 : 5,
              textOverflow: TextOverflow.ellipsis,
              spreadColor: discpSpreadColor,
              textColor: discpTextColor,
              isSoftWrap: true,
              textAlign: TextAlign.start,
              text: "${widget.worksModel.description}",
              textSize: CardDescriptionFontSize,
              blurRadius: 10,
            )
          ],
        ),
      ),
    );
  }
}

class EducationCard extends StatefulWidget {
  const EducationCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final InstituteModel model;

  @override
  State<StatefulWidget> createState() {
    return EducationCardState();
  }
}

class EducationCardState extends State<EducationCard> {
  Color spreadColor = Colors.transparent;
  Color borderColor = Colors.white54;
  Color titleSpreadColor = Colors.transparent;
  Color titleTextColor = Colors.white54;
  Color discpSpreadColor = Colors.transparent;
  Color discpTextColor = Colors.white54;
  Color degreeColor = Colors.blue.shade200;
  Color courseColor = Colors.white54;
  Color gpaColor = Colors.white54;
  Color degreeSpreadColor = Colors.transparent;
  Color courseSpreadColor = Colors.transparent;
  Color gpaSpreadColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= 850) {
      spreadColor =
          widget.model.isCurrent ? CardSpreadCurrentColor : CardSpreadColor;
      borderColor = Colors.white;
      titleSpreadColor = CardTitleColor;
      titleTextColor = Colors.white;
      discpSpreadColor = CardDescriptionColor;
      discpTextColor = Colors.white;

      degreeColor = Colors.blue;
      courseColor = Colors.white;
      gpaColor = Colors.white;
      degreeSpreadColor = Colors.blue.shade400;
      courseSpreadColor = Colors.white70;
      gpaSpreadColor = Colors.white54;

      setState(() {});
    }
    return InkWell(
      onHover: (state) {
        if (size.width > 850) {
          spreadColor = state
              ? widget.model.isCurrent
                  ? CardSpreadCurrentColor
                  : CardSpreadColor
              : Colors.transparent;
          borderColor = state ? Colors.white : Colors.white54;
          titleSpreadColor = state ? CardTitleColor : Colors.transparent;
          titleTextColor = state ? Colors.white : Colors.white54;
          discpSpreadColor = state ? CardDescriptionColor : Colors.transparent;
          discpTextColor = state ? Colors.white : Colors.white54;

          degreeColor = state ? Colors.blue : Colors.blue.shade200;
          courseColor = state ? Colors.white : Colors.white70;
          gpaColor = state ? Colors.white : Colors.white54;
          degreeSpreadColor = state ? Colors.blue.shade400 : Colors.transparent;
          courseSpreadColor = state ? Colors.white70 : Colors.transparent;
          gpaSpreadColor = state ? Colors.white54 : Colors.transparent;

          setState(() {});
        }
      },
      onTap: () {
        widget.model.link != "" ? launch(widget.model.link) : null;
      },
      child: NeonContainer(
        lightSpreadRadius: size.width > 850 ? 15 : 4,
        lightBlurRadius: size.width > 850 ? 45 : 10,
        spreadColor: spreadColor,
        borderColor: borderColor,
        height: size.width > 850 ? 205 : 170,
        margin: const EdgeInsets.all(10),
        borderWidth: 2,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(300),
          bottomRight: Radius.circular(300),
          bottomLeft: Radius.circular(1000),
          topLeft: Radius.circular(1000),
        ),
        containerColor: Colors.black,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: borderColor,
              ),
              child: Image.asset(
                widget.model.logo,
                width: size.width > 850 ? 160 : 110,
                height: size.width > 850 ? 160 : 110,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: 20, horizontal: size.width > 850 ? 20 : 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.name,
                    style: TextStyle(
                        fontSize: size.width > 850 ? 45 : 30,
                        color: borderColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.model.timeline,
                    style: TextStyle(
                        fontSize: size.width > 850 ? 20 : 15,
                        color: Colors.white60,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width:
                        size.width < 850 ? size.width - 200 : size.width - 480,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...(widget.model.degrees!.map((e) => Wrap(
                              children: [
                                NeonText(
                                    text: e.degree,
                                    fontWeight: FontWeight.bold,
                                    textColor: degreeColor,
                                    spreadColor: degreeSpreadColor,
                                    textSize: size.width > 850 ? 30 : 20),
                                NeonText(
                                  text: " | ",
                                  fontWeight: FontWeight.bold,
                                  textSize: size.width > 850 ? 30 : 20,
                                  textColor: courseColor,
                                  spreadColor: courseSpreadColor,
                                ),
                                NeonText(
                                  text: e.level,
                                  fontWeight: FontWeight.normal,
                                  textColor: courseColor,
                                  spreadColor: courseSpreadColor,
                                  textSize: size.width > 850 ? 30 : 20,
                                ),
                                NeonText(
                                    text: " | ",
                                    fontWeight: FontWeight.bold,
                                    textSize: size.width > 850 ? 30 : 20,
                                    textColor: courseColor,
                                    spreadColor: courseSpreadColor),
                                NeonText(
                                  text: e.score,
                                  fontWeight: FontWeight.w300,
                                  textColor: courseColor,
                                  spreadColor: courseSpreadColor,
                                  textSize: size.width > 850 ? 30 : 20,
                                ),
                              ],
                            ))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CertificateCard extends StatefulWidget {
  const CertificateCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final InstituteModel model;

  @override
  State<StatefulWidget> createState() {
    return CertificateCardState();
  }
}

class CertificateCardState extends State<CertificateCard> {
  Color spreadColor = Colors.transparent;
  Color borderColor = Colors.white54;
  Color titleSpreadColor = Colors.transparent;
  Color titleTextColor = Colors.white54;
  Color discpSpreadColor = Colors.transparent;
  Color discpTextColor = Colors.white54;

  Color orgColor = Colors.blue.shade200;
  Color providerColor = Colors.white54;
  Color orgSpreadColor = Colors.transparent;
  Color providerSpreadColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width <= 850) {
      spreadColor =
          widget.model.isCurrent ? CardSpreadCurrentColor : CardSpreadColor;
      borderColor = Colors.white;
      titleSpreadColor = CardTitleColor;
      titleTextColor = Colors.white;
      discpSpreadColor = CardDescriptionColor;
      discpTextColor = Colors.white;

      orgColor = Colors.blue;
      providerColor = Colors.white;
      orgSpreadColor = Colors.blue.shade400;
      providerSpreadColor = Colors.white70;
      setState(() {});
    }
    return InkWell(
      onHover: (state) {
        if (size.width > 850) {
          spreadColor = state
              ? widget.model.isCurrent
                  ? CardSpreadCurrentColor
                  : CardSpreadColor
              : Colors.transparent;
          borderColor = state ? Colors.white : Colors.white54;
          titleSpreadColor = state ? CardTitleColor : Colors.transparent;
          titleTextColor = state ? Colors.white : Colors.white54;
          discpSpreadColor = state ? CardDescriptionColor : Colors.transparent;
          discpTextColor = state ? Colors.white : Colors.white54;

          orgColor = state ? Colors.blue : Colors.blue.shade200;
          providerColor = state ? Colors.white : Colors.white70;
          orgSpreadColor = state ? Colors.blue.shade400 : Colors.transparent;
          providerSpreadColor = state ? Colors.white70 : Colors.transparent;

          setState(() {});
        }
      },
      onTap: () {
        if (widget.model.link != "") {
          launch(widget.model.link);
        }
      },
      child: NeonContainer(
        lightSpreadRadius: size.width > 850 ? 15 : 4,
        lightBlurRadius: size.width > 850 ? 45 : 10,
        spreadColor: spreadColor,
        borderColor: borderColor,
        height: size.width > 850 ? 150 : 120,
        margin: const EdgeInsets.all(10),
        borderWidth: 2,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(300),
          bottomRight: Radius.circular(300),
          bottomLeft: Radius.circular(1000),
          topLeft: Radius.circular(1000),
        ),
        containerColor: Colors.black,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: borderColor,
              ),
              child: Image.asset(
                widget.model.logo,
                width: size.width > 850 ? 100 : 70,
                height: size.width > 850 ? 100 : 70,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      widget.model.name,
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(
                          fontSize: size.width > 850 ? 30 : 20,
                          color: borderColor,
                          fontWeight: FontWeight.w700),
                    ),
                    width:
                        size.width > 850 ? size.width - 490 : size.width - 180,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...(widget.model.degrees!.map((e) => Wrap(
                            children: [
                              NeonText(
                                  text: e.degree,
                                  fontWeight: FontWeight.bold,
                                  textColor: orgColor,
                                  spreadColor: orgSpreadColor,
                                  textSize: size.width > 850 ? 20 : 15),
                              NeonText(
                                text: " | ",
                                fontWeight: FontWeight.bold,
                                textSize: size.width > 850 ? 20 : 15,
                                textColor: providerColor,
                                spreadColor: providerSpreadColor,
                              ),
                              NeonText(
                                  text: e.level,
                                  fontWeight: FontWeight.normal,
                                  textColor: providerColor,
                                  spreadColor: providerSpreadColor,
                                  textSize: size.width > 850 ? 20 : 15),
                            ],
                          ))),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatefulWidget {
  const FeatureCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final GenericModel model;

  @override
  State<StatefulWidget> createState() {
    return FeatureCardState();
  }
}

class FeatureCardState extends State<FeatureCard> {
  Color spreadColor = CardSpreadColor;
  Color borderColor = Colors.white;
  Color titleSpreadColor = CardTitleColor;
  Color titleTextColor = Colors.white;
  Color discpSpreadColor = CardDescriptionColor;
  Color discpTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return NeonContainer(
      lightSpreadRadius: size.width > 850 ? 10 : 4,
      lightBlurRadius: size.width > 850 ? 30 : 10,
      spreadColor: Colors.indigo.withOpacity(0.7),
      borderColor: borderColor,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      borderWidth: 2,
      borderRadius: BorderRadius.circular(CardRadius),
      containerColor: Colors.black87,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    widget.model.link == null
                        ? null
                        : launch(widget.model.link ?? "");
                  },
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      NeonText(
                        text: widget.model.type + " | ",
                        fontWeight: FontWeight.w700,
                        textSize: size.width > 850 ? 25 : 20,
                        textColor: Colors.indigo,
                        spreadColor: Colors.indigo,
                      ),
                      NeonText(
                          text: widget.model.name,
                          maxLine: 3,
                          textColor: Colors.white,
                          spreadColor: Colors.white,
                          textSize: size.width > 850 ? 20 : 15),
                      const SizedBox(
                        width: 10,
                      ),
                      widget.model.link != null
                          ? Image.asset(
                              "assets/images/link.png",
                              width: size.width > 850 ? 20 : 15,
                              height: size.width > 850 ? 20 : 15,
                            )
                          : const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.model.description ?? "",
              maxLines: 5,
              softWrap: true,
              style: TextStyle(
                  fontSize: size.width > 850 ? 20 : 15,
                  color: borderColor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
