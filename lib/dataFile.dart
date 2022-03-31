import 'package:portfolio/models/BuildsModel.dart';
import 'package:portfolio/models/iconLinkModel.dart';

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
}
