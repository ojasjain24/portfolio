import 'package:portfolio/models/BuildsModel.dart';
import 'package:portfolio/models/iconLinkModel.dart';

import 'models/WorksModel.dart';

class portfolioDetails {
  static String myName = "Ojas Jain";
  static String tagLine = "to Ojas' portfolio";
  static List<String> Skills = [
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

  static List<iconLinkModel> socials = [
    iconLinkModel("assets/images/google-play.png",
        "https://play.google.com/store/apps/developer?id=Anchal"),
    iconLinkModel("assets/images/linkedin.png",
        "https://www.linkedin.com/in/ojas-jain-028179197/"),
    iconLinkModel("assets/images/github.png", "https://github.com/ojasjain24"),
    iconLinkModel(
        "assets/images/dart.png", "https://pub.dev/packages/neon_widgets"),
    iconLinkModel("assets/images/instagram.png",
        "https://www.instagram.com/casual_photography___/"),
  ];

  static List<BuildsModel> experienceList = [
    BuildsModel(
        assetImage: "assets/images/EnigmaRunner.png",
        name: "Enigma Runner",
        description:
            "Enigma Runner is a platformer game, in which the player has to collect artifacts at the end of every level to complete the story. There are some mind boggling twists at the end of every level, which the player needs to overcome to clear the level. Currently It has 4 levels and can be played on IOS, Android and windows",
        links: [
          iconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.Affix.EnigmaRunner")
        ]),
    BuildsModel(
        assetImage: "assets/images/512.png",
        name: "Affix Chat",
        description:
            "Affix is an end to end encrypted chat application for android devices. Apart from chat and group chat, Affix also Provides video calling, audio calling, file transfer, screen share, public and private group options, etc. Affix also provides multiple themes so that users can customize the app according to their taste.",
        links: [
          iconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.affixchat.chatappv0")
        ]),
    BuildsModel(
        assetImage: "assets/images/neon_widgets_logo.png",
        name: "Neon Widgets",
        description:
            "Neon_widgets is a cool open source flutter library which provides Neon versions of most commonly used widgets. These widgets are fully customizable, which can be used to give neon touch to other widgets as well. This library is compatible with all the platforms. This portfolio also uses this library",
        links: [
          iconLinkModel("assets/images/dart.png",
              "https://pub.dev/packages/neon_widgets"),
          iconLinkModel("assets/images/github.png",
              "https://github.com/ojasjain24/neon_widgets_flutter"),
        ]),
    BuildsModel(
        assetImage: "assets/images/qrlogo.png",
        name: "Quick Scanner",
        description:
            "Quick scanner is a QR code and Barcode scanner app for android devices which is very compact in terms of size. It saves scanned history in local storage which can be viewed and deleted in the app itself.",
        links: [
          iconLinkModel("assets/images/google-play.png",
              "https://play.google.com/store/apps/details?id=com.Affix.qrcodescanner")
        ]),
  ];

  static List<WorksModel> techWorksList = [
    WorksModel(
      link: "https://www.linkedin.com/company/affixchat/",
      companyName: "Affix",
      endDate: "Current",
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
      description:
          "Developed UI for a cross platform social media application using flutter and dart and integrated it with Javascript backend using APIs.",
    ),

    WorksModel(
      link: "https://www.linkedin.com/company/e-city-vibes-pvt-ltd/",
      companyName: "E-City Vibes",
      endDate: "February 2021",
      startDate: "May 2021",
      title: "Mobile application developer intern",
      description:
          "Developed an Augmented Reality App for native android devices using AR Core, Android Studio, java and firebase.Developed an Employee Management App for native android devices using Android Studio, java and firebase.",
    ),
    WorksModel(
      link: "https://dataasservices.com/",
      companyName: "Data As Services",
      endDate: "October 2020",
      startDate: "January 2021",
      title: "Junior android developer intern",
      description:
          "Worked on a travel and tourism app using android studio, java and firebase.",
    ),
    WorksModel(
      link: "https://verzeo.com/",
      companyName: "Verzeo",
      endDate: "April 2020",
      startDate: "May 2020",
      title: "ML intern",
      description:
          "This was a course + internship where I first learned and then worked on Data Analysis and data Prediction using Machine Learning and Python.",
    ),
  ];
  static List<WorksModel> leadWorksList = [
    WorksModel(
      link: "https://www.madiee.com/",
      companyName: "Madiee games",
      endDate: "January 2022",
      startDate: "March 2022",
      title: "product management Intern",
      description:
          "Managed and designed games for corporate training.Lead multiple game design teams and delivered game concepts.",
    ),
    WorksModel(
      link: "https://www.linkedin.com/company/aim2excel/?originalSubdomain=in",
      companyName: "Aim2Excel",
      endDate: "January 2022",
      startDate: "February 2022",
      title: "Product Management Intern",
      description:
          "Managed and designed games for corporate training.Lead multiple game design teams and delivered game concepts.",
    ),
  ];
}
