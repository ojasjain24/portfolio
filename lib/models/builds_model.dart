import 'package:portfolio/models/icon_link_model.dart';

class BuildsModel {
  String name;
  String? assetImage;
  String description;
  List<IconLinkModel>? links;

  BuildsModel({
    required this.description,
    this.assetImage,
    required this.name,
    this.links,
  });
}
