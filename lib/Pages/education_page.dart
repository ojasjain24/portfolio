import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../app_constants.dart';
import '../cards.dart';
import '../data_file.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      hoverColor: Colors.white30,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const HomePage()));
                      },
                      child: const Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      hoverColor: Colors.white30,
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    super.widget));
                      },
                      child: const Text(
                        "Education",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      hoverColor: Colors.white30,
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => const Extras()));
                      },
                      child: const Text(
                        "More",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
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
                            (e) => educationCard(
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
                            (e) => certificateCard(
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
                            (e) => certificateCard(
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
    );
  }
}
