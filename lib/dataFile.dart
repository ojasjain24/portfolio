import 'package:portfolio/iconLinkModel.dart';

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
      "I am a passionate software developer from IIIT Kurnool. I worked on technologies like Flutter, Android, Unity, Java, Python, Augmented Reality, and many more. I love ";

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
}
