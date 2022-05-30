import 'package:portfolio/models/builds_model.dart';
import 'package:portfolio/models/icon_link_model.dart';

import 'models/WorksModel.dart';

class PortfolioDetails {
  static String myName = "Ojas Jain";
  static String tagLine = "to Ojas' portfolio";
  static List<String> skills = [
    "Flutter",
    "Android",
    "Java",
    "Python",
    "Unity",
    "Figma",
    "Github",
  ];
  static String profileImage = "assets/images/myPic.webp";
  static String bio =
      "I am a passionate software developer from India. I have worked on technologies like Flutter, Android, Unity, Java, Python, Augmented Reality, and many more. I love to learn new stuffs and build solutions out of it.";

  static List<IconLinkModel> socials = [
    IconLinkModel("assets/images/google-play.png",
        "https://play.google.com/store/apps/developer?id=Anchal"),
    IconLinkModel("assets/images/linkedin.png",
        "https://www.linkedin.com/in/ojas-jain-028179197/"),
    IconLinkModel("assets/images/github.png", "https://github.com/ojasjain24"),
    IconLinkModel(
        "assets/images/dart.png", "https://pub.dev/packages/neon_widgets"),
    IconLinkModel("assets/images/instagram.png",
        "https://www.instagram.com/casual_photography___/"),
  ];

  static List<BuildsModel> experienceList = [
    BuildsModel(
        assetImage: "assets/images/EnigmaRunner.png",
        name: "Enigma Runner",
        description:
            "Enigma Runner is a platformer game, in which the player has to collect artifacts at the end of every level to complete the story. There are some mind boggling twists at the end of every level, which the player needs to overcome to clear the level. Currently It has 4 levels and can be played on IOS, Android and windows",
        links: [
          IconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.Affix.EnigmaRunner")
        ]),
    BuildsModel(
        assetImage: "assets/images/512.png",
        name: "Affix Chat",
        description:
            "Affix is an end to end encrypted chat application for android devices. Apart from chat and group chat, Affix also Provides video calling, audio calling, file transfer, screen share, public and private group options, etc. Affix also provides multiple themes so that users can customize the app according to their taste.",
        links: [
          IconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.affixchat.chatappv0")
        ]),
    BuildsModel(
        assetImage: "assets/images/neon_widgets_logo.png",
        name: "Neon Widgets",
        description:
            "Neon_widgets is a cool open source flutter library which provides Neon versions of most commonly used widgets. These widgets are fully customizable, which can be used to give neon touch to other widgets as well. This library is compatible with all the platforms. This portfolio also uses this library",
        links: [
          IconLinkModel("assets/images/dart.png",
              "https://pub.dev/packages/neon_widgets"),
          IconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/neon_widgets_flutter"),
        ]),
    BuildsModel(
        assetImage: "assets/images/qrlogo.png",
        name: "Quick Scanner",
        description:
            "Quick scanner is a QR code and Barcode scanner app for android devices which is very compact in terms of size. It saves scanned history in local storage which can be viewed and deleted in the app itself.",
        links: [
          IconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.affix.qrcodescanner")
        ]),
    BuildsModel(
        name: "Portfolio",
        description:
            "This is a website to provide a basic information about me, showcase my works and projects. This is a neon themed website built using flutter and uses the neon widgets.",
        links: [
          IconLinkModel(
              "assets/images/link.png", "https://myportfolio-67882.web.app/#/"),
          IconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/portfolio"),
        ]),
    BuildsModel(
        assetImage: "assets/images/GyanShala.png",
        name: "GyanShala app",
        description:
            "GyanShala is an e-learning platform for schools that aims to simplify distributing and grading, assignments and tests. This app allows teachers to create the subjects on app and provide live lectures, assignments and tests to the students, who in turn can submit their answer sheets and assignments in the same place.",
        links: [
          IconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/GyanShala")
        ]),
    BuildsModel(
        name: "Group Chat App",
        description:
            "This software creates a temporary chat room, which allows only those users who are connected on the same network. which makes it useful for sharing information within a private network who wants to dispose of all the conversation after every use.",
        links: [
          IconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/chatApplicationPython")
        ]),
    BuildsModel(
        name: "Students data analysis",
        description:
            "Exploratory data Analysis of a sample data of students in a institution. Used python and jupyter notebook to plot different types of graphs of various parameters.",
        links: [
          IconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/EDA/blob/master/MinorProject%20(3).ipynb")
        ]),
  ];

  static List<WorksModel> techWorksList = [
    WorksModel(
      link: "https://iudx.org.in/",
      logo: "assets/images/iudx-white.png",
      companyName: "IUDX, IISc",
      endDate: "Present",
      startDate: "May 2022",
      title: "Software development Intern",
      description: "",
    ),
    WorksModel(
      link: "https://www.linkedin.com/company/affixchat/",
      companyName: "Affix",
      endDate: "Present",
      startDate: "July 2020",
      title: "Founder",
      logo: "assets/images/512.png",
      description:
          "Designed and developed multiple applications and games like “affix chat”, “quick scanner” and “Enigma Runner” for native android devices. Managed game projects in association with a private company.",
    ),
    WorksModel(
      link:
          "https://htic.iitm.ac.in/mti/project/smart-home-healthcare-solutions-pvt-ltd/",
      companyName: "SHHS, IIT Madras",
      endDate: "April 2022",
      startDate: "January 2022",
      title: "Flutter Developer intern",
      description:
          "Worked on client facing cross platform application on flutter in the healthcare technology domain.",
    ),
    // WorksModel(
    //   link: "https://research.samsung.com/sri-b",
    //   companyName: "Samsung PRISM",
    //   endDate: "Feb 2022",
    //   startDate: "July 2021",
    //   title: "R&D intern",
    //   logo: "assets/images/512.png",
    //   description:
    //   "This is a student program, where we worked on an ML based project at Samsung R&D bangalore.",
    // ),
    WorksModel(
      link: "https://developersmonk.com/",
      companyName: "Developers Monk",
      endDate: "December 2021",
      startDate: "October 2021",
      title: "Flutter Developer",
      logo: "assets/images/devMonk.png",
      description:
          "Developed UI for a cross platform social media application using flutter and dart and integrated it with Javascript backend using APIs.",
    ),

    WorksModel(
      link: "https://www.linkedin.com/company/e-city-vibes-pvt-ltd/",
      companyName: "E-City Vibes",
      logo: "assets/images/ECV.png",
      endDate: "May 2021",
      startDate: "February 2021",
      title: "Mobile application developer intern",
      description:
          "Developed an Augmented Reality App for native android devices using AR Core, Android Studio, java and firebase.Developed an Employee Management App for native android devices using Android Studio, java and firebase.",
    ),
    WorksModel(
      link: "https://dataasservices.com/",
      companyName: "Data As Services",
      endDate: "January 2021",
      startDate: "October 2020",
      logo: "assets/images/DAS.png",
      title: "Junior android developer intern",
      description:
          "Worked on a travel and tourism app using android studio, java and firebase.",
    ),
    WorksModel(
      link: "https://verzeo.com/",
      companyName: "Verzeo",
      logo: "assets/images/Verzeo.png",
      endDate: "May 2020",
      startDate: "April 2020",
      title: "ML intern",
      description:
          "This was a course + internship where I first learned and then worked on Data Analysis and data Prediction using Machine Learning and Python.",
    ),
  ];
  static List<WorksModel> leadWorksList = [
    WorksModel(
      link: "https://www.madiee.com/",
      logo: "assets/images/MADIEE.png",
      companyName: "Madiee games",
      endDate: "March 2022",
      startDate: "January 2022",
      title: "product management Intern",
      description:
          "Managed and designed games for corporate training.Lead multiple game design teams and delivered game concepts.",
    ),
    WorksModel(
      link: "https://www.linkedin.com/company/aim2excel/?originalSubdomain=in",
      companyName: "Aim2Excel",
      endDate: "February 2022",
      startDate: "January 2022",
      title: "Product Management Intern",
      description:
          "Managed and designed games for corporate training.Lead multiple game design teams and delivered game concepts.",
    ),
  ];

  static List<IconLinkModel> skillsList = [
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg", ""),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg", ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/android/android-original-wordmark.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/c/c-original.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/csharp/csharp-original.svg",
        ""),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/unity3d/unity3d-icon.svg", ""),
    // IconLinkModel(
    //     "https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg",
    //     ""),
    IconLinkModel("https://www.vectorlogo.zone/logos/figma/figma-icon.svg", ""),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg", ""),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg", ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
        ""),

    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/react/react-original-wordmark.svg",
        ""),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/redux/redux-original.svg",
        ""),
  ];
}
