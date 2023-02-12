import 'dart:core';

import 'package:portfolio/models/builds_model.dart';
import 'package:portfolio/models/generic_model.dart';
import 'package:portfolio/models/icon_link_model.dart';

import 'models/WorksModel.dart';
import 'models/education_model.dart';

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
      "I am a passionate software developer from India. I started coding in 2019. Since then I have been developing Android Apps, Cross Platform Apps, Games, Desktop Apps, Websites, Web apps, Developers Toolkits and many more things. I love to explore new domains. I like to take challenging tasks and solve problems.";

  static List<IconLinkModel> socials = [
    IconLinkModel("assets/images/google-play.png",
        "https://play.google.com/store/apps/developer?id=Anchal"),
    IconLinkModel("assets/images/linkedin.png",
        "https://www.linkedin.com/in/ojas-jain-028179197/"),
    IconLinkModel(
      "assets/images/github.png",
      "https://github.com/ojasjain24",
    ),
    IconLinkModel(
      "assets/images/dart.png",
      "https://pub.dev/packages/neon_widgets",
    ),
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
    BuildsModel(
      name: "RC robot",
      description:
          "Remote controlled car that takes inputs via bluetooth. Participated in the robo-race competition and got second position. Used aurdino, motor driver, bt module and motors.",
    ),
  ];

  static List<WorksModel> techWorksList = [
    WorksModel(
      link: "https://iudx.org.in/",
      logo: "assets/images/iudx.png",
      companyName: "IUDX, IISc",
      endDate: "October 2022",
      startDate: "May 2022",
      title: "Software development Intern",
      description: "Worked in the frontend development team and contributed to multiple projects. Worked on geojsons, created Dashboards and Storyboards, Plotted data on maps and graphs, and many more things.",
      isCurrent: false,
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
      isCurrent: true,
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
    WorksModel(
      link: "https://research.samsung.com/sri-b",
      companyName: "Samsung PRISM",
      endDate: "February 2022",
      startDate: "August 2021",
      title: "R&D intern",
      logo: "assets/images/samsung.png",
      description:
      "Was part of 'DNN development for Human Pose Estimation' work-let. Researched on DNN and CNN to create the best possible Model.",
    ),
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
          "Managed and designed games for corporate training.Lead multiple game design teams and delivered game concepts. Helped in creating a smooth information flow system within different teams.",
    ),
    WorksModel(
      logo: "assets/images/aim2excel.png",
      link: "https://www.linkedin.com/company/aim2excel/?originalSubdomain=in",
      companyName: "Aim2Excel",
      endDate: "February 2022",
      startDate: "January 2022",
      title: "Product Management Intern",
      description:
          "Done research on various products and their features. Created product requirement documentations, basic roadmaps and wireframes for multiple products.",
    ),
  ];

  static List<IconLinkModel> skillsList = [
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg",
        "flutter"),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg", "dart"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg",
        "java"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/android/android-original-wordmark.svg",
        "android"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/c/c-original.svg",
        "c"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/csharp/csharp-original.svg",
        "c#"),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/unity3d/unity3d-icon.svg", "unity"),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/figma/figma-icon.svg", "figma"),
    IconLinkModel(
        "https://raw.githubusercontent.com/get-icon/geticon/fc0f660daee147afb4a56c64e12bde6486b73e39/icons/adobe-xd.svg",
        "Adobe Xd"),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
        "firebase"),
    IconLinkModel(
        "https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg", "git"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg",
        "python"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original-wordmark.svg",
        "HTML"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original-wordmark.svg",
        "CSS"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
        "javascript"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
        "node js"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/react/react-original-wordmark.svg",
        "react"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg",
        "docker"),
    IconLinkModel(
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/redux/redux-original.svg",
        "redux"),
    IconLinkModel(
        "https://raw.githubusercontent.com/get-icon/geticon/fc0f660daee147afb4a56c64e12bde6486b73e39/icons/influxdb.svg",
        "influxdb"),
  ];

  static List<InstituteModel> educationList = [
    InstituteModel(
        name: "IIIT Kurnool",
        timeline: "2019-2023",
        degrees: [
          DegreeModel(degree: "B.Tech", level: "Mechanical", score: "7.9CGPA"),
        ],
        logo: "assets/images/iiitdmkl.png",
        isCurrent: true),
  ];

  static List<InstituteModel> certificateList = [
    InstituteModel(
        name: "Product Design and Manufacturing",
        timeline: "",
        degrees: [
          DegreeModel(degree: "NPTEL", level: "IIT Kanpur", score: ""),
        ],
        logo: "assets/images/nptel_logo.png",
        link:
            "https://drive.google.com/file/d/18lSk22s3aQSVCe72kseAlrbYb00JWFO_/view?usp=sharing"),
    InstituteModel(
        name: "Operations Management",
        timeline: "",
        degrees: [
          DegreeModel(degree: "NPTEL", level: "IIT Roorkee", score: ""),
        ],
        logo: "assets/images/nptel_logo.png",
        link:
            "https://drive.google.com/file/d/1iR0rdF00OHZideF_R47WTiNYLyuJrHsz/view?usp=sharing"),
    InstituteModel(
        name: "Machine Learning",
        timeline: "",
        degrees: [
          DegreeModel(degree: "Verzeo", level: "", score: ""),
        ],
        logo: "assets/images/Verzeo.png",
        link:
            "https://drive.google.com/file/d/1LnnCa_fs4Hv5aPbUO614u5BYWMmfz1wa/view?usp=sharing"),
    InstituteModel(
        name: "Create and Manage Cloud Resources",
        timeline: "",
        degrees: [
          DegreeModel(degree: "Google Cloud", level: "", score: ""),
        ],
        logo: "assets/images/gcp_logo.png",
        link:
            "https://www.cloudskillsboost.google/public_profiles/b312a02e-07e3-4fa7-a4a8-b3b03dec2fcf/badges/1443194?utm_medium=social&utm_source=linkedin&utm_campaign=ql-social-share"),
    InstituteModel(
      name: "Abacus and mental math",
      timeline: "",
      degrees: [
        DegreeModel(degree: "UcMas", level: "", score: ""),
      ],
      logo: "assets/images/ucmass.png",
    ),
  ];

  static List<InstituteModel> eventCertificateList = [
    InstituteModel(
        name: "GDC 'I-NCUBATE' Cohort 16",
        timeline: "",
        degrees: [
          DegreeModel(degree: "GDC", level: "IIT Madras", score: ""),
        ],
        logo: "assets/images/gdc-logo.png",
        link:
            "https://drive.google.com/file/d/1qZ1qkd17xpEwKtMv_QO8GqhJDewbC_XB/view?usp=sharing"),
  ];

  static List<WorksModel> volunteerWorksList = [
    WorksModel(
      link:
          "https://gdsc.community.dev/indian-institute-of-information-technology-design-manufacturing-kurnool/",
      logo: "assets/images/GDSC.png",
      companyName: "Google Developer students club",
      endDate: "Current",
      startDate: "October 2021",
      title: "Android lead",
      description:
          "Organized multiple events and sessions. Given multiple talks and took sessions on flutter. I was also the flutter festival facilitator for the year 2022",
    ),
    WorksModel(
      link:
          "https://gdsc.community.dev/indian-institute-of-information-technology-design-manufacturing-kurnool/",
      logo: "assets/images/GDSC.png",
      companyName: "Google Developer students club",
      endDate: "October 2021",
      startDate: "October 2020",
      title: "product design team",
      description:
          "Was part of product design team and had developed multiple product concepts and ideas and had built the wireframes and implementation strategies for the same",
    ),
    WorksModel(
      link: "https://iiitk.ac.in/",
      logo: "assets/images/iiitdmkl.png",
      companyName: "Placement cell",
      endDate: "Current",
      startDate: "January 2022",
      title: "Coordinator",
      description:
          "Part of the placement cell team of Indian Institute of Information Technology Design and Manufacturing (IIITDM Kurnool) in the year 2022.",
    ),
    WorksModel(
      link: "https://iiitk.ac.in/",
      logo: "assets/images/iiitdmkl.png",
      companyName: "Photography club",
      endDate: "Current",
      startDate: "July 2021",
      title: "Coordinator",
      description:
          "Conducted multiple sessions and talks on photography and different techniques of photography. Learned to operate DSLR and was the cameraman in multiple collage events.",
    ),
    WorksModel(
      link: "https://iiitk.ac.in/",
      logo: "assets/images/iiitdmkl.png",
      companyName: "Solasta 2k20",
      endDate: "March 2020",
      startDate: "January 2020",
      title: "Marketing team member",
      description:
          "Was member of Solasta's marketing team. Solasta is the annual techno-cultural fest of IIIT Kurnool. Bought sponsors for the event and helped in the coordination",
    ),
  ];

  static List<GenericModel> hobbies = [
    GenericModel(
        name: "Guitar", type: "hobby", assetImage: "assets/images/guitar.png"),
    GenericModel(
        name: "Photography",
        type: "hobby",
        assetImage: "assets/images/dslr.png"),
    GenericModel(
        name: "Swimming",
        type: "hobby",
        assetImage: "assets/images/swimming.png"),
    GenericModel(
        name: "Badminton",
        type: "hobby",
        assetImage: "assets/images/badminton.png"),
    GenericModel(
        name: "Basketball",
        type: "hobby",
        assetImage: "assets/images/basketball.png"),
    GenericModel(
        name: "Volleyball",
        type: "hobby",
        assetImage: "assets/images/volleyball.png"),
    GenericModel(
        name: "Table Tennis",
        type: "hobby",
        assetImage: "assets/images/tt.png"),
    GenericModel(
        name: "Football",
        type: "hobby",
        assetImage: "assets/images/football.png"),
    GenericModel(
        name: "Doodling",
        type: "hobby",
        assetImage: "assets/images/doodle.png"),
  ];
  static List<GenericModel> features = [
    GenericModel(
        name: "Neon widgets featured",
        description:
            "Neon widgets, which is a flutter package that provides neon themed widgets, was featured on 45th edition of 'I should go to sleep' along with the blog on how to create the neon effect.",
        link: "https://ishouldgotosleep.com/news/this-week-in-flutter-45/",
        type: "Feature"),
    GenericModel(
        name: "how to create the neon effect blog",
        description:
            "This blog guides flutter developers to create the neon effects in flutter and use them in their projects. It also features a few modules that provides neon effects in flutter.",
        link:
            "https://medium.com/@119me0007/how-to-add-neon-effect-in-your-flutter-project-b2eaf2e258ae",
        type: "Blog"),
    GenericModel(
        name: "how to make a more readable flutter code blog",
        description:
            "This blog helps flutter developers to create a more readable code and a cleaner file structure, that in turns improves project quality and reduces the development time",
        link:
            "https://medium.com/@119me0007/how-to-make-a-more-readable-flutter-code-fc9d86450dcb",
        type: "Blog"),
    GenericModel(
        name: "Introduction to flutter",
        description:
            "In this session, I explained what is flutter and why it should be learned",
        link:
            "https://gdsc.community.dev/events/details/developer-student-clubs-indian-institute-of-information-technology-design-manufacturing-kurnool-presents-flutter-festival-indian-institute-of-information-technology-design-manufacturing-kurnool/",
        type: "Talk"),
    GenericModel(
        name: "Getting started with flutter",
        description:
            "In this session, I along with other speakers, explained how to get started with flutter, create a project, project structure, basic concepts of flutter, by live coding.",
        link:
            "https://gdsc.community.dev/events/details/developer-student-clubs-indian-institute-of-information-technology-design-manufacturing-kurnool-presents-flutter-festival-indian-institute-of-information-technology-design-manufacturing-kurnool-2/",
        type: "Live workshop"),
    GenericModel(
        name: "Flutter session",
        description:
            "In this session, I explained the basic concepts of flutter, by creating a dashboard. Created custom widgets and demonstrated the best practices and proper file structuring.",
        link:
            "https://gdsc.community.dev/events/details/developer-student-clubs-indian-institute-of-information-technology-design-manufacturing-kurnool-presents-flutter-festival-indian-institute-of-information-technology-design-manufacturing-kurnool-1/",
        type: "Live workshop"),
    GenericModel(
        name: "Mannequin challenge winner",
        description:
            "I was the part of winning team of mannequin challenge, that was conducted by Solasta 2k20.",
        type: "Award"),
  ];

  static String educationHeadLine =
      "Currently I am perusing B.tech in 2019-2023 batch from Indian Institute of Information Technology (IIIT), Kurnool. I have explored various domains during this period and worked on Android Dev, Web Dev, Cross Platform Dev, Game Dev, ML, IOT, Digital Twins, AR/VR, CAD Designing, etc. I have created various industry level projects and also have done multiple internships in various startups and companies. I have completed multiple certified and uncertified courses in different domains. Apart form these, I took active part in club activities as well. I was the Photography Club Coordinator, Placement Cell Coordinator, Marketing Team Member, Android Lead in Google Developer Student Club, Flutter Facilitator in Flutter Festival, Guitarist in Music Club, and Many more...";

  static String extrasHeadLine = ""
      "Apart from coding and academics, I also like to do other stuff like, writing blogs, playing guitar, photography, playing sports, and many more. This section contains all those hobbies and the stuff I like do in my free time";
}
