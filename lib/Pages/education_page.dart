import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../app_constants.dart';
import '../cards.dart';
import '../data_file.dart';
import '../tabs.dart';
import 'extras.dart';
import 'home_page.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return EducationPageState();
  }
}

class EducationPageState extends State<EducationPage> {
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
              Tabs(context: context, size: size, currentTab: "Education"),
              Container(
                padding: size.width > 850
                    ? const EdgeInsets.symmetric(horizontal: 100, vertical: 10)
                    : const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      padding: size.width > 850
                          ? const EdgeInsets.symmetric(horizontal: 200)
                          : const EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.center,
                      child: NeonText(
                        text: "Education",
                        spreadColor: MainSpreadColor,
                        textSize: HeadingFontSize,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: NeonText(
                        textAlign: TextAlign.justify,
                        text: PortfolioDetails.educationHeadLine,
                        spreadColor: MainSpreadColor,
                        textSize: CardTitleFontSize,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: NeonText(
                        text: "Degree",
                        spreadColor: MainSpreadColor,
                        textSize: HeadingFontSize,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: [
                        ...(PortfolioDetails.educationList
                            .map(
                              (e) => EducationCard(
                                model: e,
                              ),
                            )
                            .toList())
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: NeonText(
                        text: "Course Certificates",
                        spreadColor: MainSpreadColor,
                        textSize: HeadingFontSize,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: [
                        ...(PortfolioDetails.certificateList
                            .map(
                              (e) => CertificateCard(
                                model: e,
                              ),
                            )
                            .toList())
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: NeonText(
                        text: "Event Certificates",
                        spreadColor: MainSpreadColor,
                        textSize: HeadingFontSize,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      children: [
                        ...(PortfolioDetails.eventCertificateList
                            .map(
                              (e) => CertificateCard(
                                model: e,
                              ),
                            )
                            .toList())
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
