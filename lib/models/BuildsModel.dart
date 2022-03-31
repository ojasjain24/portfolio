import 'package:portfolio/models/iconLinkModel.dart';

class BuildsModel {
  String name;
  String assetImage;
  String description;
  List<iconLinkModel>? links;

  BuildsModel({
    required this.description,
    required this.assetImage,
    required this.name,
    this.links,
  });
}
