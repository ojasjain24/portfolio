import 'package:flutter/material.dart';
import 'package:portfolio/Pages/education_page.dart';
import 'package:portfolio/Pages/extras.dart';
import 'package:portfolio/Pages/home_page.dart';
import 'package:portfolio/Pages/work_page.dart';

import 'app_constants.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ojas' Portfolio",
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: const MyHomePage(title: 'Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Ojas Jain',
      routes: {
        '': (ctx) => const SplashScreen(),
        'home': (ctx) => const HomePage(),
        'works': (ctx) => const WorkPage(),
        'education': (ctx) => const EducationPage(),
        'extras': (ctx) => const Extras(),
      },
      initialRoute: '',

    );
  }
}
