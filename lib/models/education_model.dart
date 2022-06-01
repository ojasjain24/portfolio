class InstituteModel {
  String name;
  String timeline;
  List<DegreeModel>? degrees;
  String logo;
  bool isCurrent;

  InstituteModel({
    required this.name,
    required this.timeline,
    required this.degrees,
    this.logo = "assets/images/office-building.png",
    this.isCurrent = false,
  });
}

class DegreeModel {
  String level;
  String degree;
  String score;

  DegreeModel({
    required this.degree,
    required this.level,
    required this.score,
  });
}
