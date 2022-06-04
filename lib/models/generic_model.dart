class GenericModel {
  String name;
  String? assetImage;
  String? description;
  String? link;
  String type;

  GenericModel({
    this.description,
    this.assetImage,
    this.link,
    required this.type,
    required this.name,
  });
}
