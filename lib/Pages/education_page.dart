import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../appConstents.dart';
import '../cards.dart';
import '../data_file.dart';
import 'Extras.dart';
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const HomePage()));
                      },
                      child: const Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    super.widget));
                      },
                      child: const Text(
                        "Education",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => Extras()));
                      },
                      child: const Text(
                        "More",
                        style: TextStyle(color: Colors.white, fontSize: 30),
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
                  ? EdgeInsets.symmetric(horizontal: 100, vertical: 10)
                  : EdgeInsets.all(5),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: oNeonText(
                      text: "Ojas' Education",
                      spreadColor: MainSpreadColor,
                      textSize: HeadingFontSize,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: oNeonText(
                      textAlign: TextAlign.justify,
                      text: PortfolioDetails.educationHeadLine,
                      spreadColor: MainSpreadColor,
                      textSize: CardTitleFontSize,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: oNeonText(
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
                    child: oNeonText(
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
                    child: oNeonText(
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
