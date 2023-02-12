import 'package:flutter/material.dart';
import 'package:portfolio/appConstents.dart';
import 'package:portfolio/HomePageTrees/horizontal_tree.dart';
import 'package:portfolio/HomePageTrees/vertical_tree.dart';
import 'package:portfolio/Pages/Extras.dart';
import 'package:portfolio/Pages/education_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
                        setState(() {});
                      },
                      child: const Text(
                        "Home",
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const EducationPage()));
                      },
                      child: const Text(
                        "Education",
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => Extras()));
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
            SizedBox(
              child: size.width >= 850
                  ? widgetTreeHorizontal(Size(size.width, size.height * 0.9))
                  : widgetTreeVertical(Size(size.width, size.height * 0.9)),
            ),
          ],
        ),
      ),
    );
  }
}
