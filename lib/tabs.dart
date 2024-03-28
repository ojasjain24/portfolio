import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

Widget Tabs(
    {required BuildContext context,
    required Size size,
    required String currentTab}) {
  List<String> tabs = [
    "Home", "Works", "Education", "Extras"
  ];
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...(tabs
                  .map(
                    (e) => Container(
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    hoverColor: Colors.white30,
                    onTap: () {
                      Navigator.of(context).pushNamed(e.toLowerCase());
                    },
                    child: Text(
                      e,
                      style: e==currentTab
                          ? const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800)
                          : const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              )
                  .toList()),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}