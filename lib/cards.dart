import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/appConstents.dart';
import 'package:portfolio/models/education_model.dart';
import 'package:portfolio/models/generic_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/WorksModel.dart';
import 'models/icon_link_model.dart';

class buildsCard extends StatefulWidget {
  buildsCard({
    this.assetImage,
    required this.name,
    required this.description,
    required this.links,
    this.isCurrent = false,
  });

  String? assetImage;
  String name;
  String description;
  List<IconLinkModel>? links;
  bool isCurrent;

  @override
  State<StatefulWidget> createState() {
    return buildsCardState();
  }
}

class buildsCardState extends State<buildsCard> {
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
      child: oNeonContainer(
        clipBehaviour: Clip.antiAlias,
        lightSpreadRadius: size.width > 850 ? 15 : 4,
        lightBlurRadius: size.width > 850 ? 45 : 10,
        borderWidth: 3,
        borderRadius: BorderRadius.circular(CardRadius),
        containerColor: Colors.black,
        spreadColor: spreadColor,
        borderColor: borderColor,
        width: 440,
        height: 410,
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
                      oNeonText(
                        blurRadius: 10,
                        isSoftWrap: true,
                        textAlign: TextAlign.center,
                        text: widget.name,
                        spreadColor: titleSpreadColor,
                        textColor: titleTextColor,
                        textSize: 25,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      oNeonText(
                        textAlign: TextAlign.justify,
                        text: widget.description,
                        maxLine: 6,
                        textOverflow: TextOverflow.ellipsis,
                        spreadColor: discpSpreadColor,
                        textColor: discpTextColor,
                        textSize: 15,
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
              padding: const EdgeInsets.all(10),
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
                                width: 40,
                                height: 40,
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

class worksCard extends StatefulWidget {
  worksCard({
    required this.worksModel,
    required this.screenSize,
    required this.parentPadding,
  });

  WorksModel worksModel;
  Size screenSize;
  double parentPadding;

  @override
  State<StatefulWidget> createState() {
    return worksCardState();
  }
}

class worksCardState extends State<worksCard> {
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
          borderColor = state ? Colors.white : Colors.white54;
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
      child: oNeonContainer(
        width: 455,
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
                      child: oNeonText(
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
                        child: oNeonText(
                          textOverflow: TextOverflow.ellipsis,
                          maxLine: 2,
                          textAlign: TextAlign.start,
                          text: widget.worksModel.title,
                          spreadColor: discpSpreadColor,
                          textColor: discpTextColor,
                          fontWeight: FontWeight.w400,
                          textSize: CardTitleFontSize - 6,
                          isSoftWrap: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    oNeonText(
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
            oNeonText(
              maxLine: 6,
              spreadColor: discpSpreadColor,
              textColor: discpTextColor,
              isSoftWrap: true,
              textAlign: TextAlign.start,
              text: "${widget.worksModel.description}",
              fontWeight: FontWeight.bold,
              textSize: CardDescriptionFontSize,
              blurRadius: 10,
            )
          ],
        ),
      ),
    );
  }
}

class educationCard extends StatefulWidget {
  educationCard({
    required this.model,
  });

  InstituteModel model;

  @override
  State<StatefulWidget> createState() {
    return educationCardState();
  }
}

class educationCardState extends State<educationCard> {
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
      spreadColor =
          widget.model.isCurrent ? CardSpreadCurrentColor : CardSpreadColor;
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
              ? widget.model.isCurrent
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
        widget.model.link != "" ? launch(widget.model.link) : null;
      },
      child: oNeonContainer(
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
        containerColor: Colors.black87,
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
                  Container(
                    width:
                        size.width < 850 ? size.width - 200 : size.width - 480,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...(widget.model.degrees!.map((e) => Wrap(
                              children: [
                                Text(e.degree,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                        fontSize: size.width > 850 ? 30 : 20)),
                                Text(
                                  " | ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width > 850 ? 30 : 20,
                                      color: Colors.white70),
                                ),
                                Text(e.level,
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white70,
                                      fontSize: size.width > 850 ? 30 : 20,
                                    )),
                                Text(
                                  " | ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width > 850 ? 30 : 20,
                                      color: Colors.white70),
                                ),
                                Text(e.score,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white54,
                                      fontSize: size.width > 850 ? 30 : 20,
                                    )),
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

class certificateCard extends StatefulWidget {
  certificateCard({
    required this.model,
  });

  InstituteModel model;

  @override
  State<StatefulWidget> createState() {
    return certificateCardState();
  }
}

class certificateCardState extends State<certificateCard> {
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
      spreadColor =
          widget.model.isCurrent ? CardSpreadCurrentColor : CardSpreadColor;
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
              ? widget.model.isCurrent
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
        launch(widget.model.link);
      },
      child: oNeonContainer(
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
        containerColor: Colors.black87,
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
                  Container(
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
                              Text(e.degree,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      fontSize: size.width > 850 ? 20 : 15)),
                              Text(
                                " | ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width > 850 ? 20 : 15,
                                    color: Colors.white70),
                              ),
                              Text(e.level,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white70,
                                      fontSize: size.width > 850 ? 20 : 15)),
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

class featureCard extends StatefulWidget {
  featureCard({
    required this.model,
  });

  GenericModel model;

  @override
  State<StatefulWidget> createState() {
    return featureCardState();
  }
}

class featureCardState extends State<featureCard> {
  Color spreadColor = CardSpreadColor;
  Color borderColor = Colors.white;
  Color titleSpreadColor = CardTitleColor;
  Color titleTextColor = Colors.white;
  Color discpSpreadColor = CardDescriptionColor;
  Color discpTextColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        widget.model.link == null ? null : launch(widget.model.link ?? "");
      },
      child: oNeonContainer(
        lightSpreadRadius: size.width > 850 ? 10 : 4,
        lightBlurRadius: size.width > 850 ? 30 : 10,
        spreadColor: Colors.indigo,
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
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: size.width > 850 ? 30 : 25,
                      color: borderColor,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: widget.model.type + " | ",
                        style: const TextStyle(color: Colors.indigo),
                      ),
                      TextSpan(
                        text: widget.model.name,
                      )
                    ]),
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
      ),
    );
  }
}
