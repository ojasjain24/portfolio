class WorksModel {
  String companyName;
  String title;
  String? description;
  String? logo;
  String startDate;
  String endDate;
  String? link;

  WorksModel({
    this.description,
    required this.companyName,
    required this.endDate,
    this.logo,
    this.link,
    required this.startDate,
    required this.title,
  });
}
