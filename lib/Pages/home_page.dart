import 'package:flutter/material.dart';
import 'package:portfolio/HomePageTrees/horizontal_tree.dart';
import 'package:portfolio/HomePageTrees/vertical_tree.dart';
import 'package:portfolio/Pages/education_page.dart';
import 'package:portfolio/Pages/extras.dart';
import 'package:portfolio/Pages/work_page.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/tabs.dart';

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
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/star.webp"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Builder(builder:(context)=>Tabs(context: context, size: size, currentTab: "Home")),
              Tabs(context: context, size: size, currentTab: "Home"),
              SizedBox(
                child: size.width >= 1020
                    ? widgetTreeHorizontal(Size(size.width, size.height * 0.9))
                    : widgetTreeVertical(Size(size.width, size.height * 0.9)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
