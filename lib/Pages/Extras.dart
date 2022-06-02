import 'package:flutter/material.dart';
import 'package:portfolio/Pages/home_page.dart';

import 'education_page.dart';

class Extras extends StatefulWidget {
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
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const EducationPage()));
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
                          setState(() {});
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
                alignment: Alignment.center,
                child: Image.asset("assets/images/construction.jpg",
                    height: size.height * 0.6, width: size.width * 0.6),
              ),
              const Text(
                "Under Construction",
                style: TextStyle(color: Colors.white, fontSize: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
