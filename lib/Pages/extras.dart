import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:portfolio/Pages/home_page.dart';
import 'package:portfolio/cards.dart';

import '../app_constants.dart';
import '../data_file.dart';
import 'education_page.dart';

class Extras extends StatefulWidget {
  const Extras({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ExtrasState();
  }
}

class ExtrasState extends State<Extras> {
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
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      hoverColor: Colors.white30,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const EducationPage()));
                      },
                      child: const Text(
                        "Education",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      hoverColor: Colors.white30,
                      onTap: () {
                        setState(() {});
                      },
                      child: const Text(
                        "More",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: NeonText(
                    text: "A bit more about me!",
                    spreadColor: MainSpreadColor,
                    textSize: HeadingFontSize,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: size.width > 850
                      ? const EdgeInsets.symmetric(horizontal: 200)
                      : const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: NeonText(
                    textAlign: TextAlign.justify,
                    text: PortfolioDetails.extrasHeadLine,
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
                    text: "Achievements",
                    spreadColor: MainSpreadColor,
                    textSize: HeadingFontSize - 10,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    ...(PortfolioDetails.features
                        .map(
                          (e) => Container(
                            padding: size.width > 850
                                ? const EdgeInsets.symmetric(horizontal: 200)
                                : const EdgeInsets.symmetric(horizontal: 30),
                            child: FeatureCard(
                              model: e,
                            ),
                          ),
                        )
                        .toList())
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: NeonText(
                    text: "Hobbies",
                    spreadColor: MainSpreadColor,
                    textSize: HeadingFontSize - 10,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: size.width > 850
                        ? const EdgeInsets.all(30)
                        : const EdgeInsets.all(12),
                    margin: size.width > 850
                        ? const EdgeInsets.symmetric(
                            horizontal: 150, vertical: 30)
                        : const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 12),
                    child: Row(
                      children: [
                        ...(PortfolioDetails.hobbies
                            .map(
                              (e) => Tooltip(
                                message: e.name,
                                child: NeonContainer(
                                  containerColor: Colors.white,
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(10),
                                  borderRadius: BorderRadius.circular(1000),
                                  spreadColor:
                                      Colors.indigoAccent.withOpacity(0.7),
                                  lightSpreadRadius: size.width > 850 ? 10 : 4,
                                  lightBlurRadius: size.width > 850 ? 30 : 12,
                                  child: Image.asset(
                                    e.assetImage ?? "",
                                    width: size.width > 850 ? 70 : 50,
                                    height: size.width > 850 ? 70 : 50,
                                  ),
                                ),
                              ),
                            )
                            .toList())
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
